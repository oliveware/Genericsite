//
//  File.swift
//  
//
//  Created by Herve Crespel on 28/01/2024.
//

import Foundation

public struct Theme: Codable {
    
    static var intro = Theme("intro", nil)
    
    var name: String = "intro"
    var label: String?
    var color: String = colors[0]
    var titre: String
    var exergue: String = ""
    
    var slide: String = "TIchart"
    var type = "pdfimg"
    var first: Int = 1
    var last: Int = 2
    
    //var edition: String? //= "S0F0"
    var d:Int = 1
    
    public var items: [Rubric] = []
    
    init(_ t:String, _ l:String?) {
        titre = t
        label = l
    }
    
    mutating func update(_ ex:String, _ sl: String, _ rubrics:[Rubric]) {
        exergue = ex
        slide = sl
        items = rubrics
    }
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
