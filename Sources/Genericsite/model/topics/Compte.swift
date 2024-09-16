//
//  File.swift
//  
//
//  Created by Herve Crespel on 10/08/2024.
//

import Foundation


public struct Comptejson : Codable {
    public var data: String
    var solde: Soldejson
    public var soldebanque:String { solde.banque }
    public var ecritures: [Ecriturejson]
    
    public init(_ data:String, _ solde:(banque:String, reel:String), _ ecritures:[Ecriturejson]) {
        self.data = data
        self.solde = Soldejson(solde)
        self.ecritures = ecritures
    }
}

public struct Soldejson: Codable {
    let banque:String
    let reel:String
    
    init(_ solde:(banque:String, reel:String)) {
        banque = solde.banque
        reel = solde.reel
    }
}

public struct Ecriturejson: Codable {
    public let id:Int?
    public let date:String
    public let libellé:String
    public let envoi:String?
    public let montant:String
    
    public init(ecriture:(id:Int,date:String, libellé:String, envoi:String, montant:String)) {
        self.id = ecriture.id
        self.date = ecriture.date
        self.libellé = ecriture.libellé
        self.envoi = ecriture.envoi
        self.montant = ecriture.montant
    }
}
