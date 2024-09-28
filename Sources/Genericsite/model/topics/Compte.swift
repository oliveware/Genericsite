//
//  Compte.swift
//
//
//  Created by Herve Crespel on 10/08/2024.
//

import Foundation
import Semantex
import Attribex
import Oware

extension CompteBancaire {
    init(_ comptejson:Comptejson,_ catégorie:Bool?) {
        let compte = Compte(comptejson.soldebanque, Ecritures(comptejson.ecritures))
        if let data = comptejson.data {
            self.init(data, compte, comptejson.id, comptejson.folio)
        } else {
            self.init(BankingData(catégorie), compte, comptejson.id, comptejson.folio)
        }
    }
}

public struct Comptejson : Codable {
    var id: String?
    public var data: BankingData?
    var solde: Soldejson
    public var soldebanque:String { solde.banque }
    public var ecritures: [Ecriturejson]
    public var folio:Foliojson?
    
    public init(_ bourse: CompteBancaire) {
        id = bourse.id
        let boursejson = bourse.json
        data = boursejson.data
        solde = Soldejson(boursejson.solde)
        ecritures = boursejson.ecritures.json
        folio = boursejson.folio
    }
    
    public init(_ json:String) {
        let jsonData = json.data(using: .utf8)!
        self = try! JSONDecoder().decode(Comptejson.self, from: jsonData)
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
    
    public init(_ ecriture:(id:Int,date:String, libellé:String, envoi:String, montant:String)) {
        self.id = ecriture.id
        self.date = ecriture.date
        self.libellé = ecriture.libellé
        self.envoi = ecriture.envoi
        self.montant = ecriture.montant
    }
}

extension Ecritures {
    init(_ ecritures:[Ecriturejson]) {
       // devisekind = .EUR
        var banque: [Ecriture] = []
        var avenir: [Ecriture] = []
        for json in ecritures {
            let ecriture = Ecriture(json.id,json.envoi,json.date,json.libellé,json.montant)
            if json.date == "" {
                avenir.append(ecriture)
            } else {
                banque.append(ecriture)
            }
        }
        self.init(banque,avenir)
    }
    
    var json:[Ecriturejson] {
        var ecritures: [Ecriturejson] = []
        for ecriture in all {
            ecritures.append(Ecriturejson(ecriture.json))
        }
        return ecritures
    }
}


