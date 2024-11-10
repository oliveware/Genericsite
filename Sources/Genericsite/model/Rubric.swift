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
}
