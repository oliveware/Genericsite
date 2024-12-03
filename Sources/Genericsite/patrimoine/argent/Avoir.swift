//
//  Avoir.swift
//  Genericsite
//
//  Created by Herve Crespel on 02/10/2024.
//


import Oware
import Attribex
import Semantex
import Putex

public struct Avoir: Codable {
        
    static var nextid = 0
    static func newid(_ domain:String) -> String {
        nextid += 1
        return domain + String(nextid)
    }
    
    public var courant: [Comtopic] = [Comtopic(nil)]
    public var epargne: [Comtopic] = []
    public var bourse: [Comtopic] = []
    
    public init(_ compte:Comtopic) {
        courant = [compte]
    }
    
    public init(_ c:[Comtopic], _ e:[Comtopic] = [], _ b:[Comtopic] = []) {
        courant = c
        epargne = e
        bourse = b
    }
    
   /* public func save() {
        let fichier = Fichierjson("argent","moi")
        fichier.write(self)
    }*/

    public init(_ theme:Theme) {
        let rubrics = theme.items
        courant = []
        epargne = []
        bourse = []
        if rubrics.count > 0 {
            let courantopics = rubrics[0].items
            for topic in courantopics {
                courant.append(Comtopic(topic,nil))
            }
            if rubrics.count > 1 {
                let epargnetopics = rubrics[1].items
                for topic in epargnetopics {
                    epargne.append(Comtopic(topic,false))
                }
                if rubrics.count > 2 {
                    let boursetopics = rubrics[2].items
                    for topic in boursetopics {
                        bourse.append(Comtopic(topic,true))
                    }
                }
            }
        }
      /*  for comtopic in courant {
            CompteBancaire.courant.append(comtopic.compte)
        }
        let codecourant = Codref(Mot("comptes courants","compte courant"), compteBancaire.courant)*/
    }
}

extension Theme {
    mutating func update(_ avoir:Avoir) {
        items[0].update(avoir.courant)
        items[1].update(avoir.epargne)
        items[2].update(avoir.bourse)
    }
    
    init(_ avoir:Avoir) {
        
         var rubrics: [Rubric] = []
         
         var courantopics : [Topic] = []
         for compte in avoir.courant {
             courantopics.append(Topic(compte))
         }
         rubrics.append(
             Rubric("comptes", "Comptes courants", "Comptes courants", argentsite.colors[1], "", "navigationcourant", courantopics)
         )
        
        var epargnetopics : [Topic] = []
        for compte in avoir.epargne {
            epargnetopics.append(Topic(compte))
        }
        rubrics.append(
            Rubric("epargne", "Epargne", "Epargne", argentsite.colors[2], "", "navigationepargne", epargnetopics)
        )
        
        var boursetopics : [Topic] = []
        for compte in avoir.bourse {
            boursetopics.append(Topic(compte))
        }
        rubrics.append(
            Rubric("bourse", "Bourse", "Bourse", argentsite.colors[3], "", "navigationbourse", boursetopics)
        )
         
        self.init( "Affaires à suivre",
             "intro",
             "parents",
             argentsite.colors[0],
             "lastmaj",
             "tabord",
             rubrics
        )
     }
}

extension Rubric {
    mutating func update(_ comtopics:[Comtopic]) {
        var new :[Topic] = []
        for comtopic in comtopics {
            new.append(Topic(comtopic))
        }
        items = new
    }
}
