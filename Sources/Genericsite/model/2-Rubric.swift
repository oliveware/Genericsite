//
//  Rubric.swift
//
//
//  Created by Herve Crespel on 28/01/2024.
//

import Foundation


public struct Rubric: Codable, Identifiable, Item {
    public var id:String {name}
    var name: String = ""       //= String(Immeuble.begining.année)
    var label: String?        //= String(Immeuble.begining.année)
    var color: String?
    var titre: String?        //= "année \(Immeuble.begining.année)"
    var exergue: String = ""
    
    var type:String?
    var slide: String?     //= "second\(Immeuble.begining.année)"
    
    var first: Int?
    var last: Int?
    
    var edition: String?    //"S0F0"
    var d:Int?
    
    public var items: [Topic]
    
    public init(_ page:Page, _ topics:[Topic]) {

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
        
        items = topics
    }
}
