//
//  File.swift
//  
//
//  Created by Herve Crespel on 10/08/2024.
//

import Foundation


public struct Comptejson : Codable {
    public var data: BankingData
    public var solde: Soldejson
    public var ecritures: [Ecriturejson]
    
    public init(_ solde:(banque:String, reel:String), _ ecritures:[Ecriturejson]) {
        self.solde = Soldejson(solde)
        self.ecritures = ecritures
    }
}

struct Soldejson: Codable {
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
}
