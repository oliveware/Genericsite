//
//  Argent.swift
//
//
//  Created by Herve Crespel on 10/08/2024.
//

import Oware
import Attribex
import Semantex
import Putex

public struct Argent: Codable {
    
    public var avoir: Avoir
    public var tables : [String:Coderef] = [:]
    
    public init(_ compte:Comtopic) {
        avoir = Avoir(compte)
    }
    
    public init(_ c:[Comtopic], _ e:[Comtopic] = [], _ b:[Comtopic] = []) {
        avoir = Avoir(c , e, b)
    }
    
   /* public func save() {
        let fichier = Fichierjson("argent","moi")
        fichier.write(self)
    }*/

    public init(_ sitemain:Sitemain) {
        let avoir = Avoir(sitemain)
        Banque.all = sitemain.contexte?.banques ?? []
        self.avoir = avoir
        Coderef.all = sitemain.contexte?.tables ?? [:]
    }
}

extension Sitemain {
    mutating func update(_ argent:Argent) {
        intro.update(argent.avoir)
        contexte = Contexte()
    }
    
    // création
   public init(_ argent:Argent) {
       
       let contexte = Contexte()
       let immo = Immobilier()
       let contacts = Contacts()
       
       let avoir = argent.avoir
        var rubrics: [Rubric] = []
        
        var courantopics : [Topic] = []
        for compte in avoir.courant {
            courantopics.append(Topic(compte))
        }
        rubrics.append(
            Rubric("comptes", "Comptes courants", "Comptes courants", argentsite.colors[1], "", "navigationcourant", courantopics)
        )
       
       var epargnetopics : [Topic] = []
       for compte in avoir.epargne {
           epargnetopics.append(Topic(compte))
       }
       rubrics.append(
           Rubric("epargne", "Epargne", "Epargne", argentsite.colors[2], "", "navigationepargne", epargnetopics)
       )
       
       var boursetopics : [Topic] = []
       for compte in avoir.bourse {
           boursetopics.append(Topic(compte))
       }
       rubrics.append(
           Rubric("bourse", "Bourse", "Bourse", argentsite.colors[3], "", "navigationbourse", boursetopics)
       )
        
       let theme = Theme(
            "Affaires à suivre","intro","parents", argentsite.colors[0],
            "lastmaj",
            "tabord",  rubrics)
        
       self.init(
            exergue :
                "exergue de bas de page",
            go: "retour ...",
            titrage : ["Grand", " ", "titre"],
            maxime: "exergue d'accueil",
            accueil: "invitation à la suite",
            intro: theme,
            immobilier: immo,
            contacts:contacts,
            contexte:contexte
        )
    }
}
