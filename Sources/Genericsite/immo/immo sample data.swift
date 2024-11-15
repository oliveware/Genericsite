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
                { "id":"123", "label":"cour" },
                { "id":"124", "label":"grange"}
            ]
        },
        {"id":"17", 
            "terrain":{"territoire":1 ,"region":7 ,"commune":1 ,"quartier":1 , "terrain":395},
            "batiments": [
                {"id":"122", "label":"Lambersart" ,"maison":
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
                {"id":"122" ,"label":"garages Soubise", "cour":
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
                {"id":"122", "label":"garages Watteau" ,"cour":
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
/*

        "principal":{"local":{"lid":{"global":{"territoire":1}},"label":"communs", "autreadresse":false, "emplacement":"", "description":"parties communes"}, "pieces":[]},
            "logements":[
            
            {"local":{"lid":{"global":{"territoire":1}},"label":"premier", "autreadresse":false, "emplacement":"", "description":"appartement du premier étage"}, "pieces":[]},
            {"local":{"lid":{"global":{"territoire":1}},"label":"gauche", "autreadresse":false, "emplacement":"", "description":"rdc droit"}, "pieces":[]},
            {"local":{"lid":{"global":{"territoire":1}},"label":"droit", "autreadresse":false, "emplacement":"", "description":"rdc gauche"}, "pieces":[]}
            ]
        },
], "garages":[],
    "maisons":[
        
        {   "lid":{"global":{"territoire":1,"region":1,"commune":31}, "local":{"quartier":1,"parcelle:":1}},"nom":"grange", "label":"67 fond",
            "principal":{"local":{"lid":{"global":{"territoire":1,"region":1,"commune":31}, "local":{"quartier":1,"parcelle:":1}}, "label":"communs", "autreadresse":false, "emplacement":"", "description":"parties communes"}, "pieces":[]},
            "logements":[]
        }
    ]
    },
    {
    "label":"61bis apartements",
        "parcelle":{"global":{"territoire":1,"region":1,"commune":131}, "local":{"quartier":1,"parcelle:":2}},
    "immeubles":[],"garages":[],
    "maisons":[
        {   "lid":{"global":{"territoire":1}}, "label":"61bis 1407",
            "principal":{"local":{"lid":{"global":{"territoire":1}},"label":"communs", "autreadresse":false, "emplacement":"", "description":"parties communes"}, "pieces":[]},
            "logements":[
            {"local":{"lid":{"global":{"territoire":1}},"label":"rue", "autreadresse":false, "emplacement":"", "description":"appartement côté rue"}, "pieces":[]},
            {"local":{"lid":{"global":{"territoire":1}},"label":"cour", "autreadresse":false, "emplacement":"", "description":"appartement côté cour"}, "pieces":[]}
            ]
        }
    ]
    },
    {
        "label":"61bis garages",
        "parcelle":{"global":{"territoire":1,"region":1,"commune":59131}, "local":{"quartier":1,"parcelle:":3}},
        "immeubles":[],"garages":[
            {"id":1,"local":{"lid":{"global":{"territoire":1}},"label":"1", "autreadresse":false, "emplacement":"", "description":"garage"}, "parking":false},
            {"id":2,"local":{"lid":{"global":{"territoire":1}},"label":"2", "autreadresse":false, "emplacement":"", "description":"garage"}, "parking":false},
            {"id":3,"local":{"lid":{"global":{"territoire":1}},"label":"3", "autreadresse":false, "emplacement":"", "description":"garage"}, "parking":false},
            {"id":4,"local":{"lid":{"global":{"territoire":1}},"label":"4", "autreadresse":false, "emplacement":"", "description":"garage"}, "parking":false}
        ],
        "maisons":[]
        },
{
    "label":"Lambersart",
    "parcelle":{"global":{"territoire":1,"region":1,"commune":59130}, "local":{"quartier":1,"parcelle:":13}},
    "immeubles":[],"garages":[],
    "maisons":[
        {   "lid":{"global":{"territoire":1,"region":1,"commune":59130}, "local":{"quartier":1,"parcelle:":13}}, "label":"Lambersart",
            "principal":{"local":{"lid":{"global":{"territoire":1}},"label":"", "autreadresse":false, "emplacement":"", "description":"maison à deux étages"}, "pieces":[]},
            "logements":[]
        }
    ]
},
{
    "label":"Hardelot",
    "parcelle":{"global":{"territoire":1,"region":1,"commune":62130}, "local":{"quartier":1,"parcelle:":15}},
    "immeubles":[],"garages":[],
    "maisons":[
        {   "lid":{"global":{"territoire":1,"region":1,"commune":62130}, "local":{"quartier":1,"parcelle:":15}}, "label":"Hardelot",
            "principal":{"local":{"lid":{"global":{"territoire":1}},"label":"", "autreadresse":false, "emplacement":"", "description":"studio front de mer"}, "pieces":[]},
            "logements":[]
        }
    ]
    
    }
]
}
"""
*/
