//
//  File.swift
//  
//
//  Created by Herve Crespel on 10/08/2024.
//

import Foundation


public struct Comptejson : Codable {
    //var data: BankingData
    var solde: Soldejson
    var ecritures: [Ecriturejson]
}

struct Soldejson: Codable {
    let banque:String
    let reel:String
}

public struct Ecriturejson: Codable {
    public let date:String
    public let libellé:String
    public let envoi:String?
    public let montant:String
}
