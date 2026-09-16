/** Hosts estáticos podem servir .gz como resposta comprimida ou como arquivo gzip.
 * O fetch já decodifica Content-Encoding; inspeciona o payload para evitar decodificar duas vezes.
 */
export async function decodeModelResponse(
  response: Response,
  expectedBytes: number,
  compressed: boolean,
): Promise<ArrayBuffer> {
  if (!response.ok) throw new Error('Um arquivo de anatomia não pôde ser carregado.')
  const payload = await response.arrayBuffer()
  const signature = new Uint8Array(payload, 0, Math.min(2, payload.byteLength))
  const gzip = compressed && signature[0] === 0x1f && signature[1] === 0x8b
  const buffer = gzip
    ? await new Response(new Blob([payload]).stream().pipeThrough(new DecompressionStream('gzip'))).arrayBuffer()
    : payload
  if (buffer.byteLength !== expectedBytes) throw new Error('Um arquivo de anatomia estava incompleto. Recarregue o visualizador.')
  return buffer
}