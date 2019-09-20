function(_) {
  "prefix": {
    "xml": "http://www.w3.org/XML/1998/namespace",
    "rdf": "http://www.w3.org/1999/02/22-rdf-syntax-ns#",
    "rdfs": "http://www.w3.org/2000/01/rdf-schema#",
    "hm": "http://data.hubmapconsortium.org/"
  },
  "used": {
    "_:id1": {
      "prov:activity": "hm:00-extraction-process",
      "prov:entity": "hm:00-extraction-protocol"
    }
  },
  "wasDerivedFrom": {
    "_:id2": {
      "prov:generatedEntity": "hm:00-organ-biomaterial",
      "prov:usedEntity": "hm:00-donor-biomaterial"
    },
    "_:id4": {
      "prov:generatedEntity": "hm:00-clinical-file",
      "prov:usedEntity": "hm:00-donor-biomaterial"
    }
  },
  "wasGeneratedBy": {
    "_:id3": {
      "prov:entity": "hm:00-organ-biomaterial",
      "prov:activity": "hm:00-extraction-process"
    }
  },
  "entity": {
    "hm:00-extraction-protocol": {},
    "hm:00-donor-biomaterial": {},
    "hm:00-organ-biomaterial": {},
    "hm:00-clinical-file": {}
  },
  "activity": {
    "hm:00-extraction-process": {}
  }
}
