//
//  generic.swift
//  Locations
//
//  Created by Herve Crespel on 14/01/2023.
//

import Foundation

// Constantes
let colors = ["darker", "colorA", "colorB"]
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
struct MainTitle : Codable {
    var left: String
    var middle: String
    var right: String
    
    init (_ l:String, _ m:String, _ r:String) {
        left = l
        middle = m
        right = r
    }
}
struct Welcome : Codable {
    var titre: String
    var texte: String
    var exergue: String
    var enter: String
    
    init (_ ti:String, _ tx:String, _ ex:String, _ e:String) {
        titre = ti
        texte = tx
        exergue = ex
        enter = e
    }
}

struct Mainav : Codable {
    var home = "Accueil"
    var synopsis = "Synopsis"
    var guide = "Mode d'emploi"
    var conseil = "Conseils de lecture"
    var lecture = "Lecture linéaire"
    var translation = "nota: lorsque le français n'est pas disponible, l'anglais s'affiche."
    var neuf = "Mises à jour récentes"
    var history = "Historique des mises à jour"
}

struct Guide : Codable {
    struct Desc : Codable {
        let name: String
        let first: Int
        let last: Int
        let caption: String
        
        init (_ n:String, _ f:Int, _ l:Int, _ c:String) {
            name = n
            first = f
            last = l
            caption = c
        }
    }
    var tisyn = "Utilisation du synopsis"
    var guidesyn : Desc
    var tilin = "une à une"
    var guidelin : Desc
    
    init (_ syn:Desc, _ lin:Desc) {
        guidesyn = syn
        guidelin = lin
    }
}
// produit le fichier main json
struct Sitelocal : Codable {
    var footexerg = "Comprendre - Respecter - Utiliser - Expliquer"
    var enter = "retour ..."
    var titre = MainTitle( "Data", " ", "Opera")

    var welcome = Welcome(
        "Préambule", "accueil.txt",
        "La meilleure façon de prévoir le futur, c'est de l'inventer. Alan Kay",
        "A la découverte de Data Opera")
    var advice = "conseil.txt"
    var mainav = Mainav()

    var guide = Guide(
        Guide.Desc("synopsis",2,3,"synopsis"),
        Guide.Desc("lecture",2,3,"lecture linéaire"))
    var intro : Theme
    
    init(_ theme:Theme) {
        intro = theme
    }
}


struct Sitegeneric: Codable {
    static var piroot = "locations/"
    static var localroot = "locations/site/"
    
    var name : String = ""
    var initials : String = ""
    var main = Sitelocal(Theme("",""))
    var master = Sitemaster()
    
    var isNaN : Bool {
        name == ""
    }
    
    mutating func generate(_ titre:String, _ label:String) {
        main = Sitelocal(Theme(titre,label))
        master = Sitemaster()
    }
    
    init(_ intro:Theme) {
      //  histoconso = Interpolan(logement.index)
      //  main.intro = Theme(location)
    }
}

extension Location {
    func generic() -> Sitegeneric {
        var intro : Theme
    
        //var soldes : Catalog = Catalog(.solde)
        var startan : Int = 2022
        var catalogs : [GeneriCatalog] = []
        var histoconso:Interpolan
     
     intro = Theme("","")
     
     //mutating func update(_ bail:Bail, _ entrée:Entree) {
     //name = entrée.nomsite
     //initials = bail.titulaire.initials
     //if entrée.index != nil {
     //histoconso = Interpolan(entrée.index!)
     //}
     //intro.update(bail)
  //   startan = bail.priseffet.année
     //soldes = Catalog(site: name, initials:initials, kind:.solde)
     
     //catalogs = [Catalog(site:name, initials:initials, kind:.quit, folder:String(startan))]
     //}
        return Sitegeneric(intro)
    }
}







