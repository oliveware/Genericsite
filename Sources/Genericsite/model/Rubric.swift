//
//  Rubric.swift
//
//
//  Created by Herve Crespel on 28/01/2024.
//

import Foundation
import Putex

public struct Rubric: Codable, Identifiable, Item {
    public var id:String {name}
    var name: String = ""       //= String(Immeuble.begining.année)
    var label: String?        //= String(Immeuble.begining.année)
    var color: String?
    var titre: String?        //= "année \(Immeuble.begining.année)"
    var exergue: String = ""
    
    var slide: String?     //= "second\(Immeuble.begining.année)"
    
    var first: Int?
    var last: Int?
    
    var edition: String?    //"S0F0"
    var d:Int = 1
    
    public var items: [Topic]
    
    public init(_ n:String, _ t:String, _ l:String?, _ c:String, _ ex:String, _ sl: String, _ topics:[Topic]) {
        name = n
        titre = t
        label = l ?? t
        color = c
        exergue = ex
        slide = sl
        items = topics
    }
    
    mutating func update(_ comtopics:[Comtopic]) {
        var new :[Topic] = []
        for comtopic in comtopics {
            new.append(Topic(comtopic))
        }
        items = new
    }
    
    
    
    // consommation globale par mois (index = mois - 1, 0 pour janvier)
  /*  var type = "conso"
    var firstmonth: Int? = 1
    var conso: [Consomois]? = []
    
    init(_ t:String, _ n:String?, _ l:String?, _ ex:String, _ sl: String, _ topics:[Topic], _ type:String) {
        items = topics
        self.type = type
        if type == "conso" {
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
    */

    
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
