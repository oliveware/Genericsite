//
//  Navigation.swift
//  Genericsite
//
//  Created by Herve Crespel on 10/10/2024.
//

import Oware

struct Navigation: Codable,Identifiable,Item {
    var id:String {name}
    
    var name: String
    var exergue: String
    var label: String?
    var color: String?
    var titre: String?
    var slide: String?
    var first: Int?
    var last: Int?
    
    init (_ item:Topic) {
        name = item.name
        exergue = item.exergue
        label = item.label
        titre = item.titre
        color = item.color
        slide = item.slide
        first = item.first
        last = item.last
    }
    
    init(_ n:String, _ x:String) {
        name = n
        exergue = x
    }
    
    init(_ cb:CompteBancaire) {
        let data = cb.contractuel
        name = cb.id
        exergue = data.exergue
        label = data.label
        titre = data.titre
        //color = item.color
    }
}
