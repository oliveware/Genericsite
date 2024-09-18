//
//  File.swift
//  
//
//  Created by Herve Crespel on 10/08/2024.
//

import Oware
import Attribex
import Semantex

extension Sitemain {
   public init(_ argent:Argent) {
        var rubrics: [Rubric] = []
        var courantopics : [Topic] = []
        for compte in argent.courant {
            courantopics.append(Topic(compte))
        }
        rubrics.append(
            Rubric("comptes", "Comptes courants", "Comptes courants", "", "navigationcourant",courantopics)
        )
        let theme = Theme(
            "Affaires à suivre","intro","parents",
            "dernière mise à jour le 15 septembre 2024 à 14h27",
            "tabord", rubrics)
        self.init(
            exergue :
                "exergue de bas de page",
            go: "retour ...",
            titrage : ["Grand", " ", "titre"],
            maxime: "exergue d'accueil",
            accueil: "invitation à la suite",
            intro: theme
        )
    }
}

extension Argent {
    public init(_ sitemain:Sitemain) {
        let rubrics = sitemain.intro.items
        var ccourant: [CompteCourant] = []
        var cepargne: [CompteEpargne] = []
        var cbourse: [CompteTitre] = []
        if rubrics.count > 0 {
            let courantopics = rubrics[0].items
            for topic in courantopics {
                ccourant.append(CompteCourant(topic.releve!))
            }
            if rubrics.count > 1 {
                let epargnetopics = rubrics[1].items
                for topic in epargnetopics {
                   // ccourant.append(CompteEpargne(topic.releve!))
                }
            }
            if rubrics.count > 2 {
                let boursetopics = rubrics[2].items
                for topic in boursetopics {
                   // ccourant.append(CompteTitre(topic.releve!))
                }
            }
        }
        self.init(ccourant,cepargne,cbourse)
        
    }
}

extension CompteCourant {
    init(_ comptejson:Comptejson) {
        let compte = Compte(comptejson.data ?? BankingData(), comptejson.soldebanque, Ecritures(comptejson.ecritures))
        self.init(compte, comptejson.id)
        
    }
}
