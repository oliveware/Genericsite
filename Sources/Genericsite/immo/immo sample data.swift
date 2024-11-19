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
            "terrain":{"territoire":1 ,"region":7 ,"commune":5 ,"quartier":1 , "terrain":148},
            "batiments":[
                { "id":"122", "label":"rue",
"valeur":{"date":{"jour":31,"mois":12, "année":2022},"montant":{"nombre":{"entiere":300000,"decimales":""},"symbol":"€"}},                    "immeuble": {
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
                { "id":"123", "label":"cour", "valeur":{"date":{"jour":1,"mois":1, "année":2000},"montant":{"nombre":{"decimales":""},"symbol":"€"}} },
                { "id":"124", "label":"grange", "valeur":{"date":{"jour":1,"mois":1, "année":2000},"montant":{"nombre":{"decimales":""},"symbol":"€"}}}
            ]
        },
        {"id":"17", 
            "terrain":{"territoire":1 ,"region":7 ,"commune":1 ,"quartier":1 , "terrain":395},
            "batiments": [
                {"id":"122", "label":"Lambersart" ,
                "valeur":{"date":{"jour":1,"mois":1, "année":2000},"montant":{"nombre":{"decimales":""},"symbol":"€"}},
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
        {"id":"27", 
            "terrain":{"territoire":1 ,"region":7 ,"commune":1 ,"quartier":1 , "terrain":570},
            "batiments": [
                {"id":"122" ,"label":"garages Soubise",
                "valeur":{"date":{"jour":1,"mois":1, "année":2000},"montant":{"nombre":{"decimales":""},"symbol":"€"}},
 "cour":
                    {"id":"122", "label":"garages Soubise", "garages":[
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
        {"id":"28", 
            "terrain":{"territoire":1 ,"region":7 ,"commune":1 ,"quartier":1 , "terrain":580},
            "batiments": [
                {"id":"122", "label":"garages Watteau" ,
                "valeur":{"date":{"jour":1,"mois":1, "année":2000},"montant":{"nombre":{"decimales":""},"symbol":"€"}},
"cour":
                    {"id":"122", "garages":[
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

