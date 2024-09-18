//
//  File.swift
//  
//
//  Created by Herve Crespel on 10/08/2024.
//

import Oware
import Attribex
import Semantex

struct Argentjson:Codable {
    var comptes:[Topic] = []
    var epargne:[Topic] = []
    var bourse:[Topic] = []
    
  /*  public init(_ filename:String = "moi") {
        let file = Fichierjson("argent", filename)
        if let data = file.read(self) {
            self = data
        } else {
            print("error")
        }
    }
    */

}

extension Argent {
    public init(_ sitemain:Sitemain) {
        let rubrics = sitemain.intro.items
        var ccourant: [CompteCourant] = []
        var cepargne: [CompteEpargne] = []
        var cbourse: [CompteTitre] = []
        if rubrics.count > 0 {
            let courantopics = rubrics[0].items
            for topic in courantopics {
                ccourant.append(CompteCourant(topic.releve!))
            }
            if rubrics.count > 1 {
                let epargnetopics = rubrics[1].items
                for topic in epargnetopics {
                   // ccourant.append(CompteEpargne(topic.releve!))
                }
            }
            if rubrics.count > 2 {
                let boursetopics = rubrics[2].items
                for topic in boursetopics {
                   // ccourant.append(CompteTitre(topic.releve!))
                }
            }
        }
        self.init(ccourant,cepargne,cbourse)
        
    }
}

extension CompteCourant {
    init(_ comptejson:Comptejson) {
        let compte = Compte(comptejson.data ?? BankingData(), comptejson.soldebanque, Ecritures(comptejson.ecritures))
        self.init(compte, comptejson.id)
        
    }
}
