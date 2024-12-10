//
//  sitecolors.swift
//  Genericsite
//
//  Created by Herve Crespel on 10/12/2024.
//
import SwiftUI

struct Sitecolor {
    var name:String
    var color:Color
}

struct Sitecolors {
    var colors : [Sitecolor]
    
    func cssSheet() -> String {
        return "to be made"
    }
}
