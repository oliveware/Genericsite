//
//  sample data.swift
//  Genericsite
//
//  Created by Herve Crespel on 06/11/2024.
//

let patrimoinesample = """
{
    "contexte": {
        "banques" : [
            {"id":"bp", "codebanque":"20041","BIC":"PSSTFRPPLIL", "domiciliation":"LA BANQUE POSTALE\\nLILLE CENTRE FINANCIER", "codeguichet":"01005", "nom":"Banque Postale"},
            {"id":"sg","BIC":"SOGEFRPP","nom":"Société Générale", "codebanque":"30003", "codeguichet":"01288", "domiciliation":"LAMBERSART CANTELEU\\n336/340 Av De Dunkerque \\n59130 Lambersart"},
            {"id":"cm", "BIC":"", "nom":"Crédit Mutuel", "domiciliation":"", "codebanque":"10278", "codeguichet":"02717"}
        ],
        "tables" :
        {}
    },
    "contact" : [
        {"id":"t1", "human":{"nom":"De Roeck","prenoms":["Daniel"]}},
        {"id":"t2", "human":{"nom":"Allemon","prenoms":["Guy"]}},
        {"id":"t3", "human":{"nom":"Vanbleus","prenoms":["Emeline"]}},
        {"id":"t4", "human":{"nom":"Verhelle","prenoms":[]}},
        {"id":"t5", "human":{"nom":"Odouin","prenoms":["Nicolas"]}},
        {"id":"t6", "human":{"nom":"Dussart","prenoms":[]}},
        {"id":"t7", "human":{"nom":"Mohimont","prenoms":["Axel "]}},
        
        {"id":"t10", "company":{"nom":"CAF du Nord"}},
        {"id":"t11", "company":{"nom":"CARSAT"}},
        {"id":"t12", "company":{"nom":"Paierie Nord"}},
        {"id":"t13", "company":{"nom":"MACIF"}},
        {"id":"t14", "company":{"nom":"APIVIA MACIF"}},
        {"id":"t15", "company":{"nom":"CPAM"}},
        {"id":"t16", "company":{"nom":"GTS"}},
        {"id":"t17", "company":{"nom":"Petits-fils"}},
        {"id":"t18", "company":{"nom":"Orange SA"}},
        {"id":"t19", "company":{"nom":"Abeille vie"}},
        {"id":"t20", "company":{"nom":"SOGESSUR"}},
        {"id":"t21", "company":{"nom":"MMA IARD SA-MMA IARD"}},
        {"id":"t22", "company":{"nom":"ENI GAS POWER FRANCE SA"}},
        {"id":"t23", "company":{"nom":"Direction Générale des Impôts"}},

        {"id":"t30", "company":{"nom":"Société Générale"}},
        {"id":"t31", "company":{"nom":"Banque Postale"}},
        {"id":"t32", "company":{"nom":"Crédit Mutuel"}},
        {"id":"t33", "company":{"nom":"BFORBANK"}}
    ],
    "immo" : [
        {"id":"11", 
            "terrain":{"id":148,
                "lid":{"continent":1,"territoire":1,"region":7,"commune":5},
                "numvoie":{"voie":"rue du 14 juillet", "num":"67", "codepostal":"59131"},
                "parcelles":[{"id":148, "surface":{"nombre":{"decimales":""},"quantité":"surface"}}]
            },
            "batiments":[
                { "id":11, "label":"rue",
                   "immeuble": {
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
                { "id":123, "label":"cour"}, 
                { "id":124, "label":"grange"} 
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

