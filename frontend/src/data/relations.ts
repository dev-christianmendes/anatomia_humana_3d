// Gerado por scripts/sync-frontend-relations.mjs a partir de catalog/relations.json.
// Nao editar manualmente. Execute "npm run relations:sync" apos curar relacoes.

export type RelationType = 'ARTICULATION' | 'ORIGIN' | 'INSERTION'

export interface RelationRecord {
  sourceId: string
  targetId: string
  relationType: RelationType
  description: string | null
}
export const RELATIONS: RelationRecord[] = [
  {
    "sourceId": "STR-ESQ-0175",
    "targetId": "STR-ESQ-0140",
    "relationType": "ARTICULATION",
    "description": "Sutura lambdoide."
  },
  {
    "sourceId": "STR-ESQ-0175",
    "targetId": "STR-ESQ-0243",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0175",
    "targetId": "STR-ESQ-0147",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0175",
    "targetId": "STR-ESQ-0249",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0175",
    "targetId": "STR-ESQ-0045",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0069",
    "targetId": "STR-ESQ-0140",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0069",
    "targetId": "STR-ESQ-0243",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0069",
    "targetId": "STR-ESQ-0257",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0069",
    "targetId": "STR-ESQ-0068",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0069",
    "targetId": "STR-ESQ-0138",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0069",
    "targetId": "STR-ESQ-0241",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0069",
    "targetId": "STR-ESQ-0136",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0069",
    "targetId": "STR-ESQ-0239",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0257",
    "targetId": "STR-ESQ-0068",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0257",
    "targetId": "STR-ESQ-0175",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0257",
    "targetId": "STR-ESQ-0147",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0257",
    "targetId": "STR-ESQ-0249",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0257",
    "targetId": "STR-ESQ-0140",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0257",
    "targetId": "STR-ESQ-0243",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0147",
    "targetId": "STR-ESQ-0153",
    "relationType": "ARTICULATION",
    "description": "Arco zigomatico."
  },
  {
    "sourceId": "STR-ESQ-0249",
    "targetId": "STR-ESQ-0255",
    "relationType": "ARTICULATION",
    "description": "Arco zigomatico."
  },
  {
    "sourceId": "STR-ESQ-0155",
    "targetId": "STR-ESQ-0147",
    "relationType": "ARTICULATION",
    "description": "Articulacao temporomandibular."
  },
  {
    "sourceId": "STR-ESQ-0155",
    "targetId": "STR-ESQ-0249",
    "relationType": "ARTICULATION",
    "description": "Articulacao temporomandibular."
  },
  {
    "sourceId": "STR-ESQ-0153",
    "targetId": "STR-ESQ-0136",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0255",
    "targetId": "STR-ESQ-0239",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0136",
    "targetId": "STR-ESQ-0139",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0239",
    "targetId": "STR-ESQ-0242",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0136",
    "targetId": "STR-ESQ-0138",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0239",
    "targetId": "STR-ESQ-0241",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0068",
    "targetId": "STR-ESQ-0136",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0068",
    "targetId": "STR-ESQ-0239",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0045",
    "targetId": "STR-ESQ-0046",
    "relationType": "ARTICULATION",
    "description": "Articulacao atlantoaxial."
  },
  {
    "sourceId": "STR-ESQ-0046",
    "targetId": "STR-ESQ-0030",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0030",
    "targetId": "STR-ESQ-0033",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0033",
    "targetId": "STR-ESQ-0036",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0036",
    "targetId": "STR-ESQ-0039",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0039",
    "targetId": "STR-ESQ-0041",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0041",
    "targetId": "STR-ESQ-0027",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0027",
    "targetId": "STR-ESQ-0029",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0029",
    "targetId": "STR-ESQ-0032",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0032",
    "targetId": "STR-ESQ-0035",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0035",
    "targetId": "STR-ESQ-0038",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0038",
    "targetId": "STR-ESQ-0040",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0040",
    "targetId": "STR-ESQ-0042",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0042",
    "targetId": "STR-ESQ-0043",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0043",
    "targetId": "STR-ESQ-0044",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0044",
    "targetId": "STR-ESQ-0023",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0023",
    "targetId": "STR-ESQ-0024",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0024",
    "targetId": "STR-ESQ-0025",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0025",
    "targetId": "STR-ESQ-0026",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0026",
    "targetId": "STR-ESQ-0028",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0028",
    "targetId": "STR-ESQ-0031",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0031",
    "targetId": "STR-ESQ-0034",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0034",
    "targetId": "STR-ESQ-0037",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0037",
    "targetId": "STR-ESQ-0256",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0097",
    "targetId": "STR-ESQ-0027",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0098",
    "targetId": "STR-ESQ-0029",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0099",
    "targetId": "STR-ESQ-0032",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0100",
    "targetId": "STR-ESQ-0035",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0101",
    "targetId": "STR-ESQ-0038",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0102",
    "targetId": "STR-ESQ-0040",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0103",
    "targetId": "STR-ESQ-0042",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0104",
    "targetId": "STR-ESQ-0043",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0105",
    "targetId": "STR-ESQ-0044",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0094",
    "targetId": "STR-ESQ-0023",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0095",
    "targetId": "STR-ESQ-0024",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0096",
    "targetId": "STR-ESQ-0025",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0145",
    "targetId": "STR-ESQ-0130",
    "relationType": "ARTICULATION",
    "description": "Articulacao do ombro, escapuloumeral."
  },
  {
    "sourceId": "STR-ESQ-0247",
    "targetId": "STR-ESQ-0233",
    "relationType": "ARTICULATION",
    "description": "Articulacao do ombro, escapuloumeral."
  },
  {
    "sourceId": "STR-ESQ-0106",
    "targetId": "STR-ESQ-0145",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0228",
    "targetId": "STR-ESQ-0247",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0106",
    "targetId": "STR-ESQ-0156",
    "relationType": "ARTICULATION",
    "description": "Articulacao esternoclavicular."
  },
  {
    "sourceId": "STR-ESQ-0228",
    "targetId": "STR-ESQ-0156",
    "relationType": "ARTICULATION",
    "description": "Articulacao esternoclavicular."
  },
  {
    "sourceId": "STR-ESQ-0130",
    "targetId": "STR-ESQ-0143",
    "relationType": "ARTICULATION",
    "description": "Articulacao do cotovelo."
  },
  {
    "sourceId": "STR-ESQ-0233",
    "targetId": "STR-ESQ-0215",
    "relationType": "ARTICULATION",
    "description": "Articulacao do cotovelo."
  },
  {
    "sourceId": "STR-ESQ-0130",
    "targetId": "STR-ESQ-0152",
    "relationType": "ARTICULATION",
    "description": "Articulacao do cotovelo."
  },
  {
    "sourceId": "STR-ESQ-0233",
    "targetId": "STR-ESQ-0254",
    "relationType": "ARTICULATION",
    "description": "Articulacao do cotovelo."
  },
  {
    "sourceId": "STR-ESQ-0143",
    "targetId": "STR-ESQ-0152",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0215",
    "targetId": "STR-ESQ-0254",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0143",
    "targetId": "STR-ESQ-0144",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0215",
    "targetId": "STR-ESQ-0246",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0143",
    "targetId": "STR-ESQ-0135",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0215",
    "targetId": "STR-ESQ-0238",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0152",
    "targetId": "STR-ESQ-0151",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0254",
    "targetId": "STR-ESQ-0253",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0144",
    "targetId": "STR-ESQ-0135",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0246",
    "targetId": "STR-ESQ-0238",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0135",
    "targetId": "STR-ESQ-0151",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0238",
    "targetId": "STR-ESQ-0253",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0151",
    "targetId": "STR-ESQ-0142",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0253",
    "targetId": "STR-ESQ-0245",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0144",
    "targetId": "STR-ESQ-0149",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0246",
    "targetId": "STR-ESQ-0251",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0149",
    "targetId": "STR-ESQ-0150",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0251",
    "targetId": "STR-ESQ-0252",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0150",
    "targetId": "STR-ESQ-0125",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0252",
    "targetId": "STR-ESQ-0227",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0125",
    "targetId": "STR-ESQ-0129",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0227",
    "targetId": "STR-ESQ-0232",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0108",
    "targetId": "STR-ESQ-0149",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0216",
    "targetId": "STR-ESQ-0251",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0111",
    "targetId": "STR-ESQ-0150",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0218",
    "targetId": "STR-ESQ-0252",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0114",
    "targetId": "STR-ESQ-0125",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0220",
    "targetId": "STR-ESQ-0227",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0117",
    "targetId": "STR-ESQ-0129",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0222",
    "targetId": "STR-ESQ-0232",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0120",
    "targetId": "STR-ESQ-0129",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0224",
    "targetId": "STR-ESQ-0232",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0108",
    "targetId": "STR-ESQ-0184",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0216",
    "targetId": "STR-ESQ-0193",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0184",
    "targetId": "STR-ESQ-0057",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0193",
    "targetId": "STR-ESQ-0067",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0154",
    "targetId": "STR-ESQ-0127",
    "relationType": "ARTICULATION",
    "description": "Articulacao do quadril, acetabulofemoral."
  },
  {
    "sourceId": "STR-ESQ-0021",
    "targetId": "STR-ESQ-0230",
    "relationType": "ARTICULATION",
    "description": "Articulacao do quadril, acetabulofemoral."
  },
  {
    "sourceId": "STR-ESQ-0127",
    "targetId": "STR-ESQ-0148",
    "relationType": "ARTICULATION",
    "description": "Articulacao do joelho."
  },
  {
    "sourceId": "STR-ESQ-0230",
    "targetId": "STR-ESQ-0250",
    "relationType": "ARTICULATION",
    "description": "Articulacao do joelho."
  },
  {
    "sourceId": "STR-ESQ-0127",
    "targetId": "STR-ESQ-0141",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0230",
    "targetId": "STR-ESQ-0244",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0148",
    "targetId": "STR-ESQ-0128",
    "relationType": "ARTICULATION",
    "description": "Articulacao tibiofibular proximal."
  },
  {
    "sourceId": "STR-ESQ-0250",
    "targetId": "STR-ESQ-0231",
    "relationType": "ARTICULATION",
    "description": "Articulacao tibiofibular proximal."
  },
  {
    "sourceId": "STR-ESQ-0148",
    "targetId": "STR-ESQ-0146",
    "relationType": "ARTICULATION",
    "description": "Articulacao do tornozelo, talocrural."
  },
  {
    "sourceId": "STR-ESQ-0250",
    "targetId": "STR-ESQ-0248",
    "relationType": "ARTICULATION",
    "description": "Articulacao do tornozelo, talocrural."
  },
  {
    "sourceId": "STR-ESQ-0128",
    "targetId": "STR-ESQ-0146",
    "relationType": "ARTICULATION",
    "description": "Articulacao do tornozelo, talocrural."
  },
  {
    "sourceId": "STR-ESQ-0231",
    "targetId": "STR-ESQ-0248",
    "relationType": "ARTICULATION",
    "description": "Articulacao do tornozelo, talocrural."
  },
  {
    "sourceId": "STR-ESQ-0146",
    "targetId": "STR-ESQ-0124",
    "relationType": "ARTICULATION",
    "description": "Articulacao subtalar."
  },
  {
    "sourceId": "STR-ESQ-0248",
    "targetId": "STR-ESQ-0226",
    "relationType": "ARTICULATION",
    "description": "Articulacao subtalar."
  },
  {
    "sourceId": "STR-ESQ-0146",
    "targetId": "STR-ESQ-0173",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0248",
    "targetId": "STR-ESQ-0174",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0173",
    "targetId": "STR-ESQ-0137",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0174",
    "targetId": "STR-ESQ-0240",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0173",
    "targetId": "STR-ESQ-0132",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0174",
    "targetId": "STR-ESQ-0235",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0173",
    "targetId": "STR-ESQ-0134",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0174",
    "targetId": "STR-ESQ-0237",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0126",
    "targetId": "STR-ESQ-0124",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0229",
    "targetId": "STR-ESQ-0226",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0126",
    "targetId": "STR-ESQ-0118",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0229",
    "targetId": "STR-ESQ-0223",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0126",
    "targetId": "STR-ESQ-0121",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0229",
    "targetId": "STR-ESQ-0225",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0137",
    "targetId": "STR-ESQ-0109",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0240",
    "targetId": "STR-ESQ-0217",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0132",
    "targetId": "STR-ESQ-0112",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0235",
    "targetId": "STR-ESQ-0219",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0134",
    "targetId": "STR-ESQ-0115",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-ESQ-0237",
    "targetId": "STR-ESQ-0221",
    "relationType": "ARTICULATION",
    "description": null
  },
  {
    "sourceId": "STR-MUS-0380",
    "targetId": "STR-ESQ-0106",
    "relationType": "ORIGIN",
    "description": null
  },
  {
    "sourceId": "STR-MUS-0381",
    "targetId": "STR-ESQ-0228",
    "relationType": "ORIGIN",
    "description": null
  },
  {
    "sourceId": "STR-MUS-0380",
    "targetId": "STR-ESQ-0156",
    "relationType": "ORIGIN",
    "description": null
  },
  {
    "sourceId": "STR-MUS-0381",
    "targetId": "STR-ESQ-0156",
    "relationType": "ORIGIN",
    "description": null
  },
  {
    "sourceId": "STR-MUS-0380",
    "targetId": "STR-ESQ-0147",
    "relationType": "INSERTION",
    "description": null
  },
  {
    "sourceId": "STR-MUS-0381",
    "targetId": "STR-ESQ-0249",
    "relationType": "INSERTION",
    "description": null
  },
  {
    "sourceId": "STR-MUS-0039",
    "targetId": "STR-ESQ-0106",
    "relationType": "ORIGIN",
    "description": null
  },
  {
    "sourceId": "STR-MUS-0040",
    "targetId": "STR-ESQ-0228",
    "relationType": "ORIGIN",
    "description": null
  },
  {
    "sourceId": "STR-MUS-0039",
    "targetId": "STR-ESQ-0130",
    "relationType": "INSERTION",
    "description": null
  },
  {
    "sourceId": "STR-MUS-0040",
    "targetId": "STR-ESQ-0233",
    "relationType": "INSERTION",
    "description": null
  },
  {
    "sourceId": "STR-MUS-0017",
    "targetId": "STR-ESQ-0145",
    "relationType": "ORIGIN",
    "description": null
  },
  {
    "sourceId": "STR-MUS-0018",
    "targetId": "STR-ESQ-0247",
    "relationType": "ORIGIN",
    "description": null
  },
  {
    "sourceId": "STR-MUS-0017",
    "targetId": "STR-ESQ-0130",
    "relationType": "INSERTION",
    "description": null
  },
  {
    "sourceId": "STR-MUS-0018",
    "targetId": "STR-ESQ-0233",
    "relationType": "INSERTION",
    "description": null
  }
];
