//
//  Argent.swift
//
//
//  Created by Herve Crespel on 10/08/2024.
//

import Oware


public struct Argent: Codable {
    
    static var nextid = 0
    static func newid(_ domain:String) -> String {
        nextid += 1
        return domain + String(nextid)
    }
    
    public var courant: [CompteBancaire] = [CompteBancaire(nil)]
    public var epargne: [CompteBancaire] = []
    public var bourse: [CompteBancaire] = []
    
    
    init() { }
    
    init(_ avoir:Avoir) {
        courant = []
        for compte in avoir.courant {
            courant.append(compte.compte)
        }
        for compte in avoir.epargne {
            courant.append(compte.compte)
        }
        for compte in avoir.bourse {
            courant.append(compte.compte)
        }
    }
    
    public init(_ compte:CompteBancaire) {
        courant = [compte]
    }
    
    public init(_ c:[CompteBancaire], _ e:[CompteBancaire] = [], _ b:[CompteBancaire] = []) {
        courant = c
        epargne = e
        bourse = b
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


