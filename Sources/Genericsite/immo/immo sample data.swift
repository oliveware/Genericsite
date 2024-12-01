//
//  sample data.swift
//  Genericsite
//
//  Created by Herve Crespel on 06/11/2024.
//

let immosample = """
{
    "fonciers" : [
        {"id":"11", 
            "terrain":{"id":148,
                "lid":{"continent":1,"territoire":1,"region":7,"commune":5},
                "numvoie":{"voie":"rue du 14 juillet", "num":"67", "codepostal":"59131"},
                "parcelles":[{"id":148, "surface":{"nombre":{"decimales":""},"quantité":"surface"}}]
            },
            "batiments":[
                { "id":11, "label":"rue",
"valeur":{"date":{"jour":31,"mois":12, "année":2022},  "source":"", "montant":{"nombre":{"entiere":300000,"decimales":""},"symbol":"€"}},                    "immeuble": {
                        "étages":[ 
                            {"label":"second",
                            "communs":[],
                            "logements":[
                                {"local":{"id":"10","label":"second", "description":"appartement du second",
                                "surface":{"nombre":{"decimales":""},"quantité":"surface"}, "autreadresse":false, "emplacement":""}, 
                                "pieces":[]}
                                ],
                            "garages":[]
                            },
                            {"label":"premier",
                            "communs":[],
                            "logements":[
                                {"local":{"id":"11","label":"premier", "description":"appartement du premier", 
                                    "surface":{"nombre":{"decimales":""},"quantité":"surface"}, "autreadresse":false, "emplacement":""}, 
                                "pieces":[]}
                                ],
                            "garages":[]
                            },
                            {"label":"RdC",
                            "communs":[],
                            "logements":[
                                {"local":{"id":"12","label":"droit", "description":"studio de droite", 
                                "surface":{"nombre":{"decimales":""},"quantité":"surface"}, "autreadresse":false, "emplacement":""}, 
                                "pieces":[]},
                                {"local":{"id":"13","label":"gauche", "description":"appartement de gauche", 
                                    "surface":{"nombre":{"decimales":""},"quantité":"surface"}, "autreadresse":false, "emplacement":""}, 
                                "pieces":[]}
                                ],
                            "garages":[]
                            }
                        ]
                    }
                },
                { "id":123, "label":"cour", "valeur":{"date":{"jour":1,"mois":1, "année":2000},  "source":"", "montant":{"nombre":{"decimales":""},"symbol":"€"}} },
                { "id":124, "label":"grange", "valeur":{"date":{"jour":1,"mois":1, "année":2000},  "source":"", "montant":{"nombre":{"decimales":""},"symbol":"€"}}}
            ]
        },
        {"id":"17", 
            "terrain":{"id":14,
                "lid":{"continent":1,"territoire":1,"region":7,"commune":1},
                "numvoie":{"voie":"avenue Hippolyte Peslin", "num":"4", "codepostal":"59130"},
                "parcelles":[{"id":148, "surface":{"nombre":{"decimales":""},"quantité":"surface"}}]
            },
            "batiments": [
                {"id":12, "label":"Lambersart" ,
                "valeur":{"date":{"jour":1,"mois":1, "année":2000},  "source":"", "montant":{"nombre":{"decimales":""},"symbol":"€"}},
"maison":
                    { "principal":{
                            "local":{"id":"20","label":"maison", "description":"maison ancienne", 
                                "surface":{"nombre":{"decimales":""},"quantité":"surface"}, "autreadresse":false, "emplacement":""}, 
                            "pieces":[]
                        }, "etages":[]
                    }
                }
            ]
        },
        {"id":"57", 
            "terrain":{"id":57,
                "lid":{"continent":1,"territoire":1,"region":7,"commune":1},
                "numvoie":{"voie":"avenue de Soubise", "num":"11", "codepostal":"59130"},
                "parcelles":[
                    {"id":570, "surface":{"nombre":{"decimales":""},"quantité":"surface"}},
                    {"id":571, "surface":{"nombre":{"decimales":""},"quantité":"surface"}},
                    {"id":572, "surface":{"nombre":{"decimales":""},"quantité":"surface"}}
                ]
            },
            "batiments": [
                {"id":57 ,"label":"garages Soubise",
                "valeur":{"date":{"jour":1,"mois":1, "année":2000},  "source":"", "montant":{"nombre":{"decimales":""},"symbol":"€"}},
 "cour":
                    {"id":"57", "label":"garages Soubise", "garages":[
                        {"parking":false,
                        "local":{"id":"30","label":"grand garage", "description":"garage", 
                                    "surface":{"nombre":{"decimales":""},"quantité":"surface"}, "autreadresse":false, "emplacement":""}
                        },
                        {"parking":false,
                        "local":{"id":"31","label":"garage du milieu", "description":"garage", 
                                    "surface":{"nombre":{"decimales":""},"quantité":"surface"}, "autreadresse":false, "emplacement":""}
                        },
                        {"parking":false,
                        "local":{"id":"32","label":"garage à droite", "description":"garage", 
                                    "surface":{"nombre":{"decimales":""},"quantité":"surface"}, "autreadresse":false, "emplacement":""}
                        }
                        ]
                    }
                }
            ]
        },
        {"id":"58", 
            "terrain":{"id":58,
                "lid":{"continent":1,"territoire":1,"region":7,"commune":1},
                "numvoie":{"voie":"avenue Watteau", "num":"1", "codepostal":"59130"},
                "parcelles":[
                    {"id":580, "surface":{"nombre":{"decimales":""},"quantité":"surface"}},
                    {"id":581, "surface":{"nombre":{"decimales":""},"quantité":"surface"}},
                    {"id":582, "surface":{"nombre":{"decimales":""},"quantité":"surface"}},
                    {"id":583, "surface":{"nombre":{"decimales":""},"quantité":"surface"}},
                    {"id":584, "surface":{"nombre":{"decimales":""},"quantité":"surface"}},
                    {"id":585, "surface":{"nombre":{"decimales":""},"quantité":"surface"}},
                    {"id":586, "surface":{"nombre":{"decimales":""},"quantité":"surface"}},
                    {"id":587, "surface":{"nombre":{"decimales":""},"quantité":"surface"}},
                    {"id":588, "surface":{"nombre":{"decimales":""},"quantité":"surface"}}
                ]
            },
            "batiments": [
                {"id":58, "label":"garages Watteau" ,
                "valeur":{"date":{"jour":1,"mois":1, "année":2000},  "source":"", "montant":{"nombre":{"decimales":""},"symbol":"€"}},
"cour":
                    {"id":"58", "garages":[
                        {"parking":false,
                        "local":{"id":"40","label":"garage 580", "description":"garage", 
                                    "surface":{"nombre":{"decimales":""},"quantité":"surface"}, "autreadresse":false, "emplacement":""}
                        },
                        {"parking":false,
                        "local":{"id":"41","label":"garage 581", "description":"garage", 
                                    "surface":{"nombre":{"decimales":""},"quantité":"surface"}, "autreadresse":false, "emplacement":""}
                        },
                        {"parking":false,
                        "local":{"id":"42","label":"garage 582", "description":"garage", 
                                    "surface":{"nombre":{"decimales":""},"quantité":"surface"}, "autreadresse":false, "emplacement":""}
                        },
                        {"parking":false,
                        "local":{"id":"43","label":"garage 583", "description":"garage", 
                                    "surface":{"nombre":{"decimales":""},"quantité":"surface"}, "autreadresse":false, "emplacement":""}
                        },
                        {"parking":false,
                        "local":{"id":"44","label":"garage 584", "description":"garage", 
                                    "surface":{"nombre":{"decimales":""},"quantité":"surface"}, "autreadresse":false, "emplacement":""}
                        },
                        {"parking":false,
                        "local":{"id":"45","label":"garage 585", "description":"garage", 
                                    "surface":{"nombre":{"decimales":""},"quantité":"surface"}, "autreadresse":false, "emplacement":""}
                        },
                        {"parking":false,
                        "local":{"id":"46","label":"garage 586", "description":"garage", 
                                    "surface":{"nombre":{"decimales":""},"quantité":"surface"}, "autreadresse":false, "emplacement":""}
                        },
                        {"parking":false,
                        "local":{"id":"47","label":"garage 587", "description":"garage", 
                                    "surface":{"nombre":{"decimales":""},"quantité":"surface"}, "autreadresse":false, "emplacement":""}
                        },
                        {"parking":false,
                        "local":{"id":"48","label":"garage 588", "description":"garage", 
                                    "surface":{"nombre":{"decimales":""},"quantité":"surface"}, "autreadresse":false, "emplacement":""}
                        }
                        ]
                    }
                }
            ]
        }
    ]
}
"""

