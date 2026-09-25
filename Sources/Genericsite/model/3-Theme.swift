//
//  File.swift
//  
//
//  Created by Herve Crespel on 28/01/2024.
//

import Foundation

public struct Theme: Codable, Identifiable, Item {
    
    static var intro = Theme("intro", nil, nil, "dark")
    
    public var id:String {name}
    
    var name: String = "intro"
    var exergue: String = ""
    
    var label: String?
    var color: String?
    var titre: String?
   
    var slide: String?      //= "TIchart"
    var type :String?
    var first: Int?
    var last: Int?
    
    var edition: String?    //= "S0F0"
    var d:Int?
    
    public var items: [Rubric] = []
    var colors:[String] {
        var c :[String] = [color ?? "dark"]
        for item in items {
            c.append(item.color ?? "dark")
        }
        return c
    }
    
    init(_ t:String, _ n:String?, _ l:String?, _ c:String) {
        name = n ?? "intro"
        titre = t
        label = l ?? ""
        color = c
    }
    
    public init(_ page:Page,_ rubrics:[Rubric]) {
        name    = page.name
        exergue = page.exergue
        
        label   = page.label
        titre   = page.titre
        color   = page.color
        
        type    = page.type
        slide   = page.slide
        first   = page.first
        last    = page.last
        
        edition = page.edition
        d       = page.d
        
        items = rubrics
       
    }
    
   /* mutating func update(_ ex:String, _ sl: String, _ rubrics:[Rubric]) {
        exergue = ex
        slide = sl
        items = rubrics
    }*/
    
    static var lastmaj:String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "fr_FR")
        formatter.dateFormat = "d MMMM yyyy' à 'HH'h'mm"
        return "dernière mise à jour : " + formatter.string(from:Date.now)
    }
}
