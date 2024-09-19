//
//  File.swift
//  
//
//  Created by Herve Crespel on 10/08/2024.
//

import Foundation
import Semantex
import Oware

extension Topic {
    init(_ courant:CompteCourant) {
        let compte = courant.compte.json.data
        name = compte.label
        label = compte.label
        titre = compte.domiciliation
        exergue = CompteCourant.selectorPrompt + " " + compte.numéro
        slide = ""
        releve = Comptejson(courant)
    }
    init(_ epargne:CompteEpargne) {
        let compte = epargne.compte.json.data
        name = compte.label
        label = compte.label
        titre = compte.domiciliation
        exergue = CompteEpargne.selectorPrompt + " " + compte.numéro
        slide = ""
        releve = Comptejson(epargne)
    }
    init(_ bourse:CompteTitre) {
        let compte = bourse.compte.json.data
        name = compte.label
        label = compte.label
        titre = compte.domiciliation
        exergue = CompteTitre.selectorPrompt + " " + compte.numéro
        slide = ""
        releve = Comptejson(bourse)
    }
}

public struct Comptejson : Codable {
    var id: String?
    public var data: BankingData?
    var solde: Soldejson
    public var soldebanque:String { solde.banque }
    public var ecritures: [Ecriturejson]
    
    public init(_ courant: CompteCourant) {
        id = courant.id
        let comptejson = courant.compte.json
        data = comptejson.data
        solde = Soldejson(comptejson.solde)
        ecritures = comptejson.ecritures.json
    }
    public init(_ epargne: CompteEpargne) {
        id = epargne.id
        let comptejson = epargne.compte.json
        data = comptejson.data
        solde = Soldejson(comptejson.solde)
        ecritures = comptejson.ecritures.json
    }
    public init(_ bourse: CompteTitre) {
        id = bourse.id
        let comptejson = bourse.compte.json
        data = comptejson.data
        solde = Soldejson(comptejson.solde)
        ecritures = comptejson.ecritures.json
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
