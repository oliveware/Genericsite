//
//  File.swift
//  
//
//  Created by Herve Crespel on 28/01/2024.
//

import Foundation
import Putex

public struct Rubric: Codable {
    var name: String = ""       //= String(Immeuble.begining.année)
    var label: String = ""       //= String(Immeuble.begining.année)
    var color: String = colors[1]
    var titre: String = ""       //= "année \(Immeuble.begining.année)"
    var exergue: String = ""
    
    var slide: String  = ""     //= "second\(Immeuble.begining.année)"
    
    var first: Int?
    var last: Int?
    
    var edition: String?    //"S0F0"
    var d:Int = 1
    
    public var items: [Topic]
    
    
    // consommation globale par mois (index = mois - 1, 0 pour janvier)
    var type = "conso"
    var firstmonth: Int = 1
    var conso: [Consomois] = []
    
    init(_ topics:[Topic], _ t:String) {
        items = topics
        type = t
        if t == "conso" {
            for m in 0...11 {
                conso.append(Consomois(mois: JMA.moisfr[m], moyenne: Conso.zero, cumul: [], total: Conso.zero))
            }
        }
    }
    
    init(_ début:JMA) { //}, _ apartlabel:String, _ bail:Bail) {
        let an = String(début.année)
        firstmonth = début.mois
        name = an
        label = an
        titre = "année " + an
        exergue = "consommation en chiffres"
        items = []      //[Topic(bail.titulaire.initials, début.année), Topic(bail, début.année)]
        for m in 0...11 {
            conso.append(Consomois(mois: JMA.moisfr[m], moyenne: Conso.zero, cumul: [], total: Conso.zero))
        }

       /* switch topic {
        case let topic as Consopic:
            conso = topic
        case let topic as Paypic:
            paiement = topic
        default:
            print ("erreur - topic inconnu")
        }*/
    }
    

    
    // Index relatif le plus proche d'une date
   /* func neighbour(_ date :JMA) -> IndexRelatif {
        let année = Int(name)!
        var indexes : [IndexRelatif] = []
        for mois in 0...11 {
            let consomois = conso[mois]
            for line in consomois.cumul {
                indexes.append(IndexRelatif(JMA(line.jour,mois+1,année), line.conso))
            }
        }
        var previous = indexes[0]
        for i in 0..<indexes.count {
            let index = indexes[i]
            if index.date == date {
                return index
            } else {
                if previous.date < date && date < index.date {
                    return index
                } else {
                    previous = index
                }
            }
        }
        return  previous
    } */
}
