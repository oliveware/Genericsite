//
//  jsonreaders.swift
//  Genericsite
//
//  Created by Herve Crespel on 17/01/2025.
//
import Fichiers

struct Argentjson:Codable {
    var comptes:[Comptejson] = []
    var epargne:[Comptejson] = []
    var bourse:[Comptejson] = []
    
   /* public init(_ filename:String = "moi") {
        let file = Fichierjson("argent", filename)
        if let data = file.read() {
            self = data
        } else {
            print("error")
        }
    }*/
    

}

struct Relevejson : Codable {
    var solde: Soldejson
    var ecritures: [Ecriturejson]
}
/*
struct Soldejson: Codable {
    let banque:String
    let reel:String
}

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
 
 struct Ecriturejson: Codable {
 let date:String
 let libellé:String
 let envoi:String?
 let montant:String
 }
 */
