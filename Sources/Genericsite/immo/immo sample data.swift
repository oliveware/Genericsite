//
//  sample data.swift
//  Genericsite
//
//  Created by Herve Crespel on 06/11/2024.
//

let immosample = """
{
"fonciers" : [
    {
    "label":"67 1407",
    "parcelle":{"global":{"territoire":1,"region":1,"commune":31}, "local":{"quartier":1,"parcelle:":1}},
    "immeubles":[], "garages":[],
    "maisons":[
        {   "lid":{"global":{"territoire":1}}, "label":"67 rue",
            "principal":{"local":{"lid":{"global":{"territoire":1}},"label":"communs","nom":"", "emplacement":"", "description":"parties communes"}, "pieces":[]},
            "logements":[
            {"local":{"lid":{"global":{"territoire":1}},"label":"second","nom":"", "emplacement":"", "description":"appartement du second"}, "pieces":[]},
            {"local":{"lid":{"global":{"territoire":1}},"label":"premier","nom":"", "emplacement":"", "description":"appartement du premier étage"}, "pieces":[]},
            {"local":{"lid":{"global":{"territoire":1}},"label":"gauche","nom":"", "emplacement":"", "description":"rdc droit"}, "pieces":[]},
            {"local":{"lid":{"global":{"territoire":1}},"label":"droit","nom":"", "emplacement":"", "description":"rdc gauche"}, "pieces":[]}
            ]
        },
        {   "lid":{"global":{"territoire":1,"region":1,"commune":31}, "local":{"quartier":1,"parcelle:":1}},"nom":"grange", "label":"67 fond",
            "principal":{"local":{"lid":{"global":{"territoire":1,"region":1,"commune":31}, "local":{"quartier":1,"parcelle:":1}}, "label":"communs","nom":"", "emplacement":"", "description":"parties communes"}, "pieces":[]},
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
            "principal":{"local":{"lid":{"global":{"territoire":1}},"label":"communs","nom":"", "emplacement":"", "description":"parties communes"}, "pieces":[]},
            "logements":[
            {"local":{"lid":{"global":{"territoire":1}},"label":"rue","nom":"", "emplacement":"", "description":"appartement côté rue"}, "pieces":[]},
            {"local":{"lid":{"global":{"territoire":1}},"label":"cour","nom":"", "emplacement":"", "description":"appartement côté cour"}, "pieces":[]}
            ]
        }
    ]
    },
    {
        "label":"61bis garages",
        "parcelle":{"global":{"territoire":1,"region":1,"commune":59131}, "local":{"quartier":1,"parcelle:":3}},
        "immeubles":[],"garages":[
            {"id":1,"local":{"lid":{"global":{"territoire":1}},"label":"1","nom":"", "emplacement":"", "description":"garage"}, "parking":false},
            {"id":2,"local":{"lid":{"global":{"territoire":1}},"label":"2","nom":"", "emplacement":"", "description":"garage"}, "parking":false},
            {"id":3,"local":{"lid":{"global":{"territoire":1}},"label":"3","nom":"", "emplacement":"", "description":"garage"}, "parking":false},
            {"id":4,"local":{"lid":{"global":{"territoire":1}},"label":"4","nom":"", "emplacement":"", "description":"garage"}, "parking":false}
        ],
        "maisons":[]
        },
{
    "label":"Lambersart",
    "parcelle":{"global":{"territoire":1,"region":1,"commune":59130}, "local":{"quartier":1,"parcelle:":13}},
    "immeubles":[],"garages":[],
    "maisons":[
        {   "lid":{"global":{"territoire":1,"region":1,"commune":59130}, "local":{"quartier":1,"parcelle:":13}}, "label":"Lambersart",
            "principal":{"local":{"lid":{"global":{"territoire":1}},"label":"","nom":"", "emplacement":"", "description":"maison à deux étages"}, "pieces":[]},
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
            "principal":{"local":{"lid":{"global":{"territoire":1}},"label":"","nom":"", "emplacement":"", "description":"studio front de mer"}, "pieces":[]},
            "logements":[]
        }
    ]
    
    }
]
}
"""

