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
    {},   
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

"argent": {
"courant":[
{ "id":"bp", "label":"BP",
"contractuel": { "banquid":"bp",
    "iban":{"one":"FR35","two":"2004","three":"1010","four":"0511","five":"1537","six":"2F02", "seven":"669"},
    "titulaire":"MME CRESPEL JACQUELINE\\n4 AVENUE HIPPOLYTE PESLIN\\n59130 LAMBERSART", "numéro":"1115372F026", "clé":"69"
    },
"compte": {
    "ecritures":{ "devisymbol":"€", "engagement":[], "décompte":[
        {"date": "09/09/2024","libellé": "VIREMENT DE CAISSE D ASSURANCE R AITE ET SANTE AU TRAVAIL 01913786 VIRIQUE 0824 ASSURANCE RETRAITE","montant": "609,72"},
        {"date": "09/08/2024","libellé": "VIREMENT DE CAISSE D ASSURANCE R AITE ET SANTE AU TRAVAIL 01913786 VIRIQUE 0724 ASSURANCE RETRAITE","montant": "609,72"},
        {"date": "08/08/2024","libellé": "VIR Hervé - remboursement lit Tediber Hardelot","montant": "-1 489,00"},
        {"date": "12/07/2024","libellé": "Tenue de compte - frais trimestriel","montant": "-5,10"},
        {"date": "09/07/2024","libellé": "VIREMENT DE CAISSE D ASSURANCE R AITE ET SANTE AU TRAVAIL 01913786 VIRIQUE 0624 ASSURANCE RETRAITE","montant": "609,72"},
        {"envoi": "26/05/2024","date": "12/06/2024","libellé": "Chéque 155535010 - La cense ","montant": "-406,80"},
        {"envoi": "04/06/2024","date": "10/06/2024","libellé": "Chéque 155535011 - acompte canapés ","montant": "-1 500,00"},
        {"date": "07/06/2024","libellé": "VIREMENT DE CAISSE D ASSURANCE R AITE ET SANTE AU TRAVAIL 01913786 VIRIQUE 0524 ASSURANCE RETRAITE","montant": "609,72"},
        {"date": "07/05/2024","libellé": "VIREMENT DE CAISSE D ASSURANCE R AITE ET SANTE AU TRAVAIL 01913786 VIRIQUE 0424 ASSURANCE RETRAITE","montant": "637,23"},
        {"date": "12/04/2024","libellé": "TENUE DE COMPTE FRAIS TRIMESTRIEL  ","montant": "-5,10"},
        {"date": "09/04/2024","libellé": "VIREMENT DE CAISSE D ASSURANCE R AITE ET SANTE AU TRAVAIL 01913786      VIRIQUE      0324 ASSURANCE RETRAITE","montant": "637,23"},
        {"date": "08/03/2024","libellé": "VIREMENT DE CAISSE D ASSURANCE R AITE ET SANTE AU TRAVAIL 01913786      VIRIQUE      0224 ASSURANCE RETRAITE","montant": "625,99"},
        {"date": "09/02/2024","libellé": "VIREMENT DE CAISSE D ASSURANCE R AITE ET SANTE AU TRAVAIL 01913786      VIRIQUE      0124 PENSION ACTUALISEE","montant": "625,99"},
        {"date": "17/01/2024","libellé": "TENUE DE COMPTE FRAIS TRIMESTRIEL  ","montant": "-4,20"},
        {"date": "15/01/2024","libellé": "REMBOURSEMENT FRAIS DE GESTION DE VOTRE AUTORISATION DE DECOUVERT ","montant": "5,38"},
        {"date": "09/01/2024","libellé": "VIREMENT DE CAISSE D ASSURANCE R AITE ET SANTE AU TRAVAIL 01913786      VIRIQUE      1223 ASSURANCE RETRAITE","montant": "565,60"},
        {"date": "08/12/2023","libellé": "VIREMENT DE CAISSE D ASSURANCE R AITE ET SANTE AU TRAVAIL 01913786      VIRIQUE      1123 ASSURANCE RETRAITE","montant": "565,60"},
        {"date": "05/12/2023","libellé": "FRAIS DE GESTION DE VOTRE AUTORISATION DE DECOUVERT  ","montant": "-6,00"},
        {"date": "09/11/2023","libellé": "VIREMENT DE CAISSE D ASSURANCE R AITE ET SANTE AU TRAVAIL 01913786      VIRIQUE      1023 ASSURANCE RETRAITE","montant": "627,75"}
        ]
}
}
}
],
"epargne":[],
"bourse":[]
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

