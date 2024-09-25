//
//  Argent.swift
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
            Rubric("comptes", "Comptes courants", "Comptes courants", argentsite.colors[2], "", "navigationcourant", courantopics)
        )
       
       var epargnetopics : [Topic] = []
       for compte in argent.epargne {
           epargnetopics.append(Topic(compte))
       }
       rubrics.append(
           Rubric("epargne", "Epargne", "Epargne", argentsite.colors[3], "", "navigationcourant", epargnetopics)
       )
        
       let theme = Theme(
            "Affaires à suivre","intro","parents", argentsite.colors[0],
            "",
            "tabord",  rubrics)
        
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
                   cepargne.append(CompteEpargne(topic.releve!))
                }
            }
            if rubrics.count > 2 {
                let boursetopics = rubrics[2].items
                for topic in boursetopics {
                   cbourse.append(CompteTitre(topic.releve!))
                }
            }
        }
        self.init(ccourant,cepargne,cbourse)
        
    }
}

extension CompteCourant {
    init(_ comptejson:Comptejson) {
        let compte = Compte(comptejson.cdata ?? BankingData(), comptejson.soldebanque, Ecritures(comptejson.ecritures))
        self.init(compte, comptejson.id)
    }
}
extension CompteEpargne {
    init(_ comptejson:Comptejson) {
        let compte = Compte(comptejson.cdata ?? BankingData(), comptejson.soldebanque, Ecritures(comptejson.ecritures))
        self.init(comptejson.sdata ?? SparingData(), compte, comptejson.id)
    }
}
extension CompteTitre {
    init(_ comptejson:Comptejson) {
        let compte = Compte(comptejson.cdata ?? BankingData(), comptejson.soldebanque, Ecritures(comptejson.ecritures))
        let portefeuille = comptejson.folio == nil ? Portefeuille() : Portefeuille(comptejson.folio!)
        self.init(comptejson.sdata ?? SparingData(), compte, portefeuille, comptejson.id)
    }
}
