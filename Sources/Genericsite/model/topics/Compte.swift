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

extension Topic {
    init(_ courant:CompteCourant) {
        let compte = courant.compte.json.data
        name = compte.numéro
        label = compte.nombanque
        titre = compte.nombanque
        exergue = CompteCourant.selectorPrompt + " " + compte.numéro
        slide = ""
        color = argentsite.colors[2]
        releve = Comptejson(courant)
    }
    init(_ epargne:CompteEpargne) {
        let data = epargne.json.data
        name = data.numéro
        label = data.nombanque
        titre = data.nombanque
        exergue = CompteEpargne.selectorPrompt + " " + data.numéro
        slide = ""
        color = argentsite.colors[3]
        releve = Comptejson(epargne)
    }
    init(_ bourse:CompteTitre) {
        let data = bourse.json.data
        name = data.numéro
        label = data.nombanque
        titre = data.nombanque
        exergue = CompteTitre.selectorPrompt + " " + data.numéro
        slide = ""
        color = argentsite.colors[4]
        releve = Comptejson(bourse)
    }
    public init(_ n: String, _ l:String, _ compte:Comptejson, _ c:String) {
        name = n
        label = l
        titre = l
        exergue = "compte " //+ (compte.data?.numéro ?? "")
        slide = ""
        color = c
        releve = compte
    }
}

public struct Comptejson : Codable {
    var id: String?
    public var cdata: BankingData?
    public var sdata: SparingData?
    var solde: Soldejson
    public var soldebanque:String { solde.banque }
    public var ecritures: [Ecriturejson]
    public var folio:Foliojson?
    
    public init(_ courant: CompteCourant) {
        id = courant.id
        let courantjson = courant.compte.json
        cdata = courantjson.data
        solde = Soldejson(courantjson.solde)
        ecritures = courantjson.ecritures.json
    }
    public init(_ epargne: CompteEpargne) {
        id = epargne.id
        let epargnejson = epargne.json
        sdata = epargnejson.data
        solde = Soldejson(epargnejson.solde)
        ecritures = epargnejson.ecritures.json
    }
    public init(_ bourse: CompteTitre) {
        id = bourse.id
        let boursejson = bourse.json
        sdata = boursejson.data
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


