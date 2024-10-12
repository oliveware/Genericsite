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
