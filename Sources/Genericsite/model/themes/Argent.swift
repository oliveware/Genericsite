//
//  Argent.swift
//
//
//  Created by Herve Crespel on 10/08/2024.
//

import Oware
import Attribex
import Semantex

public struct Comtopic: Codable {
    var compte: CompteBancaire
    var nav: Navigation
    
    init(_ c:CompteBancaire, _ n:Navigation) {
        compte = c
        nav = n
    }
    init(_ c:CompteBancaire) {
        compte = c
        nav = Navigation("c.id","")
    }
    
    init(_ topic:Topic) {
        nav = Navigation(topic)
        if let comptejson = topic.releve {
            compte = CompteBancaire(comptejson)
        } else {
            compte = CompteBancaire()
        }
    }
}

public struct Argent: Codable {
        
    static var nextid = 0
    static func newid(_ domain:String) -> String {
        nextid += 1
        return domain + String(nextid)
    }
    
    public var courant: [Comtopic] = [Comtopic(CompteBancaire())]
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

    public init(_ sitemain:Sitemain) {
        let rubrics = sitemain.intro.items
        courant = []
        epargne = []
        bourse = []
        if rubrics.count > 0 {
            let courantopics = rubrics[0].items
            for topic in courantopics {
                courant.append(Comtopic(topic))
            }
            if rubrics.count > 1 {
                let epargnetopics = rubrics[1].items
                for topic in epargnetopics {
                    epargne.append(Comtopic(topic))
                }
                if rubrics.count > 2 {
                    let boursetopics = rubrics[2].items
                    for topic in boursetopics {
                        bourse.append(Comtopic(topic))
                    }
                }
            }
        }
    }
}
