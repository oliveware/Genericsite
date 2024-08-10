//
//  File.swift
//  
//
//  Created by Herve Crespel on 10/08/2024.
//

import Foundation


struct Comptejson: Codable {
    let name: String
    let slide: String
    let color: String
    let label: String
    let titre: String
    let exergue: String
    let d: Int
    let releve: Relevejson
}

struct Relevejson : Codable {
    var solde: Soldejson
    var ecritures: [Ecriturejson]
}

struct Soldejson: Codable {
    let banque:String
    let reel:String
}

struct Ecriturejson: Codable {
    let date:String
    let libellé:String
    let envoi:String?
    let montant:String
}
