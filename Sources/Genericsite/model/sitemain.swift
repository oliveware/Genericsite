//
//  generic.swift
//  Locations
//
//  Created by Herve Crespel on 14/01/2023.
//

import Foundation


// produit le fichier main json
public struct Sitemain : Codable {
    var footexerg : String
    var enter : String
    var titre : MainTitle

    var welcome : Welcome
    var advice = "conseil.txt"
    var mainav = Mainav()

    var guide = Guide()
    
    public var contexte : Contexte?
       
    public var intro : Theme
    
    public init(
        exergue : String,
        go : String,
        titrage: [String],
        maxime:String,
        accueil:String,
        intro:Theme?,
        contexte:Contexte? = nil
    ) {
        footexerg = exergue
        enter = go
        titre = MainTitle(titrage)
        welcome = Welcome(maxime, accueil)
        
        self.intro = intro ?? Theme.intro
        self.contexte = contexte
    }

}

extension Sitemain {
   public init(_ argent:Argent) {
       
       let contexte = Contexte()
       
       let avoir = argent.avoir
        var rubrics: [Rubric] = []
        
        var courantopics : [Topic] = []
        for compte in avoir.courant {
            courantopics.append(Topic(compte))
        }
        rubrics.append(
            Rubric("comptes", "Comptes courants", "Comptes courants", argentsite.colors[2], "", "navigationcourant", courantopics)
        )
       
       var epargnetopics : [Topic] = []
       for compte in avoir.epargne {
           epargnetopics.append(Topic(compte))
       }
       rubrics.append(
           Rubric("epargne", "Epargne", "Epargne", argentsite.colors[3], "", "navigationepargne", epargnetopics)
       )
       
       var boursetopics : [Topic] = []
       for compte in avoir.bourse {
           boursetopics.append(Topic(compte))
       }
       rubrics.append(
           Rubric("bourse", "Bourse", "Bourse", argentsite.colors[4], "", "navigationbourse", boursetopics)
       )
        
       let theme = Theme(
            "Affaires à suivre","intro","parents", argentsite.colors[0],
            "lastmaj",
            "tabord",  rubrics)
        
       self.init(
            exergue :
                "exergue de bas de page",
            go: "retour ...",
            titrage : ["Grand", " ", "titre"],
            maxime: "exergue d'accueil",
            accueil: "invitation à la suite",
            intro: theme,
            contexte:contexte
        )
    }
}

struct MainTitle : Codable {
    var left: String
    var middle: String
    var right: String
    
    init (_ parts:[String]) {
        left = parts[0]
        middle = parts[1]
        right = parts[2]
    }
    init (_ l:String, _ m:String, _ r:String) {
        left = l
        middle = m
        right = r
    }
}
struct Welcome : Codable {
    var titre = "Préambule"
    var texte = "accueil.txt"
    var exergue: String
    var enter: String
    
    init (_ maxime:String, _ intro:String) {
        exergue = maxime
        enter = intro
    }
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
    var guidesyn = Desc("synopsis",2,3,"synopsis")
    
    var tilin = "une à une"
    var guidelin = Desc("lecture",2,3,"lecture linéaire")
    
}













