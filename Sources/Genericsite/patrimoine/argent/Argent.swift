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

  /*  public init(_ sitemain:Sitemain) {
        let avoir = Avoir(sitemain)
        Banque.all = sitemain.contexte?.banques ?? []
        self.avoir = avoir
        Coderef.all = sitemain.contexte?.tables ?? [:]
    }*/
}

extension Sitemain {
    mutating func update(_ argent:Argent) {
        intro.update(argent.avoir)
      //  contexte = Contexte()
    }
    
    // création
   public init(_ argent:Argent) {
        
       self.init(
            exergue :
                "exergue de bas de page",
            go: "retour ...",
            titrage : ["Grand", " ", "titre"],
            maxime: "exergue d'accueil",
            accueil: "invitation à la suite",
            intro: Theme(argent.avoir),
            patrimoine:Patrimoine()
        )
    }
}
