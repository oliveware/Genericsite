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

public struct Comtopic: Codable, Identifiable {
    public var id:String {nav.name}
    var compte: CompteBancaire
    var nav: Navigation
    var solde:Solde {
        var avoir = compte.compte.solde()
        if let portefeuille = compte.portefeuille {
            avoir = avoir + portefeuille.valeur
        }
        return avoir
    }
    
    init(_ c:CompteBancaire) {
        compte = c
        nav = Navigation(c)
    }
    init(_ catégorie:Bool?) {
        let cb = CompteBancaire(catégorie)
        compte = cb
        nav = Navigation(cb)
    }
    
    init(_ topic:Topic, _ catégorie:Bool?) {
        nav = Navigation(topic)
        if let comptejson = topic.releve {
            compte = CompteBancaire(comptejson, catégorie)
        } else {
            compte = CompteBancaire(catégorie)
        }
    }
}

extension CompteBancaire {
    init(_ comptejson:Comptejson,_ catégorie:Bool?) {
        let compte = Compte(comptejson.soldebanque, Ecritures(comptejson.ecritures))
        if let data = comptejson.data {
            self.init(data, compte, comptejson.id, comptejson.cartes, comptejson.chequiers, comptejson.folio)
        } else {
            self.init(BankingData(catégorie), compte, comptejson.id, comptejson.cartes, comptejson.chequiers, comptejson.folio)
        }
    }
}

public struct Comptejson : Codable {
    var id: String?
    public var data: BankingData?
    var solde: Soldejson
    public var soldebanque:String { solde.banque }
    public var ecritures: [Ecriturejson]
    var cartes: CartesBancaires?
    var chequiers: Chequiers?
    public var folio:Foliojson?
    
    public init(_ compte: CompteBancaire) {
        id = compte.id
        let json = compte.json
        data = json.data
        solde = Soldejson(json.solde)
        ecritures = json.ecritures.json
        cartes = json.cartes
        chequiers = json.chequiers
        folio = json.folio
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

extension Consomois {
    
    
    /*mutating func setconsomois(_ courant:IndexRelatif, _ bail:Bail) {
     
     intro.items[indexan].conso[indexmois] = Consomois(courant, histoconso)
     // maj définitive du consomois précédent
     fixconsomois(indexmois, indexan, courant.date.année)
     }
     
     mutating func updateconsomois(_ courant:IndexRelatif) {
     histoconso.update(courant)
     let indexan = courant.date.année - (Int(intro.items[0].name) ?? 0)
     let indexmois = courant.date.mois - 1
     intro.items[indexan].conso[indexmois].update(courant, histoconso)
     }
     
     mutating func fixconsomois(_ indexmois:Int, _ indexan:Int, _ année:Int) {
     if indexmois == 0 {
     if indexan > 0 {
     intro.items[indexan-1].conso[11].update(12, année-1, histoconso)
     } else {
     Erreur("indexan négatif impossible","Siteweb", "fixconsomois").show()
     }
     } else {
     intro.items[indexan].conso[indexmois].update(indexmois+1, année, histoconso)
     }
     }
     */
}
