//
//  File.swift
//  
//
//  Created by Herve Crespel on 10/08/2024.
//

import Foundation

// produit le fichier master json
struct Sitemaster : Codable {
    var bodycolor = "dark"
    var favicon = "favico.png"
    var logo2 = ""
    var logo3 = ""
    var buttoncolor = "colorA blackshadow"
    var bottomnav = "m"
    var defaultlang = "fr"
    var altlang = ""
    var flags = ["fr":Flag(),"en":Flag("en")]
    var com = [
        "default":  Comitem( color :"dark", button: "button border", shadow : "blackshadow"),
        "intro":    Comitem(color : "dark", button : "word", shadow: "")
        ]
}



struct Flag : Codable {
    var flag = "fr.jpg"
    var caption = "version française"
    var promptedition = "édition "
    var dispo = "Ce document n'est pas disponible en français."
    var invite = "Toucher le drapeau pour voir sa version."

    init(_ lang:String = "fr") {
        if lang == "en" {
            flag = "uk.png"
            caption = "english version"
            promptedition = "edition "
            dispo = "This document is not available in english."
            invite = "Touch the flag for getting its version."
        }
    }
}
struct Comitem : Codable {
    var color:String = "dark"
    var button:String
    var shadow:String
    var box:String?
    //var data:Catalog?
}
