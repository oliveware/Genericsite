//
//  Consommation.swift
//  Genericsite
//
//  Created by Herve Crespel on 31/10/2024.
//

struct Consommation {
    
}

extension Consomois {
    /*mutating func setconsomois(_ courant:IndexRelatif, _ bail:Bail) {
     histoconso.update(courant)
     let indexan = courant.date.année - (Int(intro.items[0].name) ?? 0)
     let indexmois = courant.date.mois - 1
     if indexmois == 0 && intro.items.count < indexan + 1 {
     intro.items.append(Rubric(courant.date, intro.label, bail))
     catalogs.append(Catalog(site:name, initials:initials, kind:.quit, folder:"\(courant.date.année)"))
     }
     intro.items[indexan].conso[indexmois] = Consomois(courant, histoconso)
     // maj définitive du consomois précédent
     fixconsomois(indexmois, indexan, courant.date.année)
     }
     
     
     */
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
