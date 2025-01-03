//
//  argent.swift
//  Genericsite
//
//  Created by Herve Crespel on 18/09/2024.
//

let samplesite = Genericsite(
    siteroot: "argent/", localroot: "argent/site/",
    name: "nom", initials: "dd"
)

let samplemain = samplesite.sitemain(theme:sampleintro)

let sampleintro = Theme(
    "Affaires à suivre","intro","argent",
    "dark",
    "lastmaj",
    "tabord",
    [
        Rubric("comptes", "Comptes courants", "Comptes courants", "darker", "", "navigationcourant",
               [
                Topic("bp", "Banque postale", Comptejson(BP), "colorA")
               ]
              ),
        Rubric("epargne", "Epargne", "Epargne", "colorB", "", "navigationepargne",
               []
              ),
        Rubric("bourse", "Bourse", "Bourse", "colorC", "", "navigationbourse",
               []
              )
    ]
)

let contexte = """
{
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

        {"id":"sg", "identity":{"name":{"nom":"Société Générale"}},
        "business":{"id":"sg","BIC":"SOGEFRPP","nom":"Société Générale", "codebanque":"30003", "codeguichet":"01288", "domiciliation":"LAMBERSART CANTELEU\\n336/340 Av De Dunkerque \\n59130 Lambersart"}, "sharing":{}
        },
        {"id":"bp", "identity":{"name":{"nom":"Banque Postale"}},
        "business":{"id":"bp", "codebanque":"20041","BIC":"PSSTFRPPLIL", "domiciliation":"LA BANQUE POSTALE\\nLILLE CENTRE FINANCIER", "codeguichet":"01005", "nom":"Banque Postale"}, "sharing":{}
        },
        {"id":"cm", "identity":{"name":{"nom":"Crédit Mutuel"}},
        "business":{"id":"cm", "BIC":"", "nom":"Crédit Mutuel", "domiciliation":"", "codebanque":"10278", "codeguichet":"02717"}, "sharing":{}
        }
    ]
}
"""

let common = """
    "banques" : [
        {"id":"bp", "codebanque":"20041","BIC":"PSSTFRPPLIL", "domiciliation":"LA BANQUE POSTALE\\nLILLE CENTRE FINANCIER", "codeguichet":"01005", "nom":"Banque Postale"},
        {"id":"sg","BIC":"SOGEFRPP","nom":"Société Générale", "codebanque":"30003", "codeguichet":"01288", "domiciliation":"LAMBERSART CANTELEU\\n336/340 Av De Dunkerque \\n59130 Lambersart"},
        {"id":"cm", "BIC":"", "nom":"Crédit Mutuel", "domiciliation":"", "codebanque":"10278", "codeguichet":"02717"}
    ]

"""

let tables = """
"tables" :
{
    "comptes courants": {
        "name":{"singulier":"compte courant", "pluriel":"comptes courants", "genre":"masculin"}, 
        "selector":"",
        "items":[
            {"code":"sg", "label":"Société Générale"},
            {"code":"cm", "label":"Crédit Mutuel"},
            {"code":"bp", "label":"Banque Postale"}
        ]
    },
    "épargne": {
        "name":{"singulier":"compte épargne", "pluriel":"comptes épargne", "genre":"masculin"}, 
        "selector":"",
        "items":[
            {"code":"sgldd1", "label":"SG LDD Jacques"},
            {"code":"sgldd2", "label":"SG LDD Jacqueline"},
            {"code":"cmlb2", "label":"CM LB Jacques"},
            {"code":"cmlb1", "label":"CM LB Jacqueline"},
            {"code":"cmldd", "label":"CM LDD Jacqueline"}
        ]
    },
    "bourse": {
        "name":{"singulier":"compte titres", "pluriel":"comptes titres", "genre":"masculin"}, 
        "selector":"",
        "items":[
            {"code":"pea1", "label":"PEA Jacques"},
            {"code":"pea2", "label":"PEA Jacqueline"}
        ]
    }
}
"""

let BP = """
{ "bankid":"bp",
"data": { "banquid":"bp",
    "iban":{"one":"FR35","two":"2004","three":"1010","four":"0511","five":"1537","six":"2F02", "seven":"669"},
    "titulaire":"MME CRESPEL JACQUELINE\\n4 AVENUE HIPPOLYTE PESLIN\\n59130 LAMBERSART", "numéro":"1115372F026", "clé":"69"
    },
"solde":{"banque":"37 456,44 €", "reel": "37 456,44 €"},
    "ecritures":[
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
"""

// données pour initialiser Patrimoine.argent
// les écritures restent à mettre au bon format (Ecriture)
let purargent = """

"argent": {
"courant":["bankid":"bp",
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
"""
