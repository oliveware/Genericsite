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
"contacts": {  
    "humans" :  [
        {"id":"t1", "identity": {"name":{"nom":"De Roeck","prenom":"Daniel"}}, "sharing":{}
        },
        {"id":"t2", "identity": {"name":{"nom":"Allemon","prenom":"Guy"}}, "sharing":{}
        },
        {"id":"t3",  "identity": {"name":{"nom":"Vanbleus","prenom":"Emeline"}}, "sharing":{}
        }
      ],
    "companies": [
        {"id":"t10", "identity":{"name":{"nom":"CAF du Nord"}}, "sharing":{}
                        },
        {"id":"t18", "identity":{"name":{"nom":"Orange SA"}}, "sharing":{}
        },
        {"id":"t23", "identity":{"name":{"nom":"Direction Générale des Impôts"}}, "sharing":{}
        },

        {"id":"t30", "identity":{"name":{"nom":"Société Générale"}}, 
        "business":{"id":"sg","BIC":"SOGEFRPP","nom":"Société Générale", "codebanque":"30003", "codeguichet":"01288", "domiciliation":"LAMBERSART CANTELEU\\n336/340 Av De Dunkerque \\n59130 Lambersart"}, "sharing":{}
        },
        {"id":"t31", "identity":{"name":{"nom":"Banque Postale"}},
        "business":{"id":"bp", "codebanque":"20041","BIC":"PSSTFRPPLIL", "domiciliation":"LA BANQUE POSTALE\\nLILLE CENTRE FINANCIER", "codeguichet":"01005", "nom":"Banque Postale"}, "sharing":{}
        },
        {"id":"t32", "identity":{"name":{"nom":"Crédit Mutuel"}}, 
        "business":{"id":"cm", "BIC":"", "nom":"Crédit Mutuel", "domiciliation":"", "codebanque":"10278", "codeguichet":"02717"}, "sharing":{}
        }
    ]
},

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

