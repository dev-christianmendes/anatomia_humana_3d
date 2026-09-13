# Extrai as malhas do "4: Muscular system" do Startup.blend da Z-Anatomy
# (CC BY-SA 4.0) para assets/original/z-anatomy/, em formato binário neutro
# consumido por scripts/build-zanatomy-muscles.mjs.
#
# Uso (Blender headless):
#   blender -b --python scripts/export-zanatomy-muscles.py -- <caminho-do-blend>
#
# Saida:
#   muscles.bin    - triangulos por malha: [u32 lenNome] bytes [u32 verts] [3*verts float32]
#   manifest.json  - [{name, concept, side, vertices, region}]
import bpy
import json
import re
import struct
import sys
from pathlib import Path
from mathutils import Vector

argv = sys.argv
idx = argv.index('--')
blend = argv[idx + 1]
outdir = Path(__file__).resolve().parent.parent / 'assets' / 'original' / 'z-anatomy'

bpy.ops.wm.open_mainfile(filepath=str(Path(blend)))

musc = bpy.data.collections.get('4: Muscular system')
if musc is None:
    raise SystemExit('collection "4: Muscular system" not found')

objects = [o for o in list(musc.objects) if o.type == 'MESH' and o.name != 'Muscular system.g']
print('SELECTED_CANDIDATES', len(objects))


def concept_side(name):
    m = re.search(r'\.([a-zA-Z]+)$', name)
    return (name[:m.start()] if m else name), (m.group(1) if m else '-')


outdir.mkdir(parents=True, exist_ok=True)
manifest = []
written = 0
with open(outdir / 'muscles.bin', 'wb') as f:
    for o in objects:
        data = o.data
        data.calc_loop_triangles()
        positions = []
        cnt = 0
        mw = o.matrix_world
        for tri in data.loop_triangles:
            for li in tri.loops:
                v = data.vertices[data.loops[li].vertex_index]
                w = mw @ Vector((v.co.x, v.co.y, v.co.z))
                positions.extend((w.x, w.y, w.z))
                cnt += 1
        if cnt == 0:
            print('ZERO', o.name)
            continue
        concept, side = concept_side(o.name)
        manifest.append({'name': o.name, 'concept': concept, 'side': side, 'vertices': cnt})
        name_b = o.name.encode('utf-8')
        f.write(struct.pack('<I', len(name_b)))
        f.write(name_b)
        f.write(struct.pack('<I', cnt))
        f.write(struct.pack('<%df' % len(positions), *positions))
        written += 1
        if written % 100 == 0:
            print('DUMPED', written)
print('TOTAL_DUMPED', written)
(outdir / 'manifest.json').write_text(json.dumps(manifest, ensure_ascii=False, indent=1))