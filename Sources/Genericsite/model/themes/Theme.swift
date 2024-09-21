//
//  File.swift
//  
//
//  Created by Herve Crespel on 28/01/2024.
//

import Foundation

public struct Theme: Codable {
    
    static var intro = Theme("intro", nil, nil, "dark")
    
    var name: String = "intro"
    var label: String?
    var color: String 
    var titre: String
    var exergue: String = ""
    
    var slide: String = "TIchart"
    var type :String? = "pdfimg"
    var first: Int? = 1
    var last: Int? = 2
    
    //var edition: String? //= "S0F0"
    var d:Int = 1
    
    public var items: [Rubric] = []
    
    init(_ t:String, _ n:String?, _ l:String?, _ c:String) {
        name = n ?? "intro"
        titre = t
        label = l
        color = c
    }
    
    public init(_ t:String, _ n:String?, _ l:String?, _ c:String, _ ex:String, _ sl: String, _ rubrics:[Rubric]) {
        name = n ?? "intro"
        titre = t
        label = l
        color = c
        slide = sl
        items = rubrics
        if ex == "" { exergue = Theme.lastmaj } else { exergue = ex }
    }
    
    mutating func update(_ ex:String, _ sl: String, _ rubrics:[Rubric]) {
        exergue = ex
        slide = sl
        items = rubrics
    }
    
    static var lastmaj:String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "fr_FR")
        formatter.dateFormat = "d MMMM yyyy' à 'HH'h'mm"
        return "dernière mise à jour : " + formatter.string(from:Date.now)
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
