//
//  generic.swift
//  Locations
//
//  Created by Herve Crespel on 14/01/2023.
//

import Foundation


// produit le fichier main json
public struct Sitemain : Codable {
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
    public var intro : Theme
    
    public init() {
        intro = Theme.intro
    }
    
    init(_ theme:Theme) {
        intro = theme
    }
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











