//
//  argent.swift
//  Genericsite
//
//  Created by Herve Crespel on 18/09/2024.
//

let argentsite = Genericsite(
        siteroot: "argent/", localroot: "argent/site/",
        colors: ["dark", "darker", "colorA", "colorB", "colorC"],
        name: "nom", initials: "dd"
    )

let argentmain = Sitemain(
    exergue :
        "exergue de bas de page",
    go: "retour ...",
    titrage : ["Grand", " ", "titre"],
    maxime: "exergue d'accueil",
    accueil: "invitation à la suite",
    intro: intro
)

let intro = Theme(
    "Affaires à suivre","intro","parents",
    argentsite.colors[0],
    "lastmaj",
    "tabord",
    [
        Rubric("comptes", "Comptes courants", "Comptes courants", argentsite.colors[2], "", "navigationcourant",
               [
                Topic("bp", "Banque postale", Comptejson(BP), argentsite.colors[2])
               ]
              ),
        Rubric("epargne", "Epargne", "Epargne", argentsite.colors[3], "", "navigationepargne",
               []
              ),
        Rubric("bourse", "Bourse", "Bourse", argentsite.colors[4], "", "navigationbourse",
               []
              )
    ]
)

let BP = """
{ "solde":{"banque":"37 456,44 €", "reel": "37 456,44 €"},
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
