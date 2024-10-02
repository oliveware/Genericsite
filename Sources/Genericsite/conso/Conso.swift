//
//  File.swift
//  
//
//  Created by Herve Crespel on 10/08/2024.
//

import Foundation


struct Consomois: Codable {
    var mois : String
    // relevé de référence
    var moyenne : Conso
    var cumul : [Cumuline]
    var total : Conso
    
    // preview
    init(mois m:String, moyenne a:Conso, cumul c:[Cumuline], total t:Conso) {
        mois = m
        moyenne = a
        cumul = c
        total = t
    }
}

struct Cumuline: Codable {
    var jour: Int
    var conso: Conso
    
    var line: [String] {
        return conso.line(String(jour))
    }
    
    init(jour: Int, conso:Conso) {
        self.jour = jour
        self.conso = conso
    }
}

struct Conso: Codable {
    
    static var zero = Conso(eau: 0, hc: 0, hp: 0)
    
    var eau : Int
    var hc : Int
    var hp : Int
    
    func line(_ prompt:String = "") -> [String] {
        return [prompt, String(eau), String(hc), String(hp)]
    }
}
