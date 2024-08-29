//
//  catalog.swift
//  Locations
//
//  Created by Herve Crespel on 26/02/2023.
//

import Foundation
import SwiftUI
import Putex

// modèle pour générer le catalog avec generic
struct GeneriCatalog {
    enum Kind : String,Codable {
        // kind = slide
        case quit       = "quittance"
        case solde      = "solde"
        case chart      = "chart"
        case archive    = "archive"
    }
    enum Itemform : String, Codable {
        case pdf       = "pdf"
        case pdfimg    = "pdfimg"
        case png       = "png"
    }
    var generator = Generator()
   // var store : JsonFile
    var link = Link()
    
    func contains(_ id:Int) -> Bool {
        return generator.contains(id)
    }
    
    struct Link {
        
    }
    
    struct Generator : Codable {
        var kind: Kind = .quit
        var name: String = ""
        var parent: String = "" // path generic de retour au parent
        var label: String = ""  // label du bouton de retour au parent
        
        // item's specific attributes
        var itemids: [Int] = []
        var itemlabels: [String] = []
        // item's common attributes
        var forme = Itemform.pdf
        var path: String = ""
        var slide: String = ""
        
        func contains(_ id:Int) -> Bool {
            let lookfor = kind == .quit ? id + 1 : id
            return itemids.contains(lookfor)
        }
        
        // les éléments du catalog peuvent être introduits dans le désordre
        mutating func publish(_ indice:Int) {
            switch kind {
            case .quit :
                let m = indice
                let mois = m+1
                if itemids.count == 0 {
                    itemids = [mois]
                    itemlabels = [JMA.moisfr[m]]
                } else {
                    var inserted = false
                    var newids: [Int] = []
                    var newlabels: [String] = []
                    for item in itemids {
                        if item < mois {
                            newids.append(item)
                            newlabels.append(JMA.moisfr[item-1])
                        } else {
                            if item == mois {
                                inserted = true
                                newids.append(item)
                                newlabels.append(JMA.moisfr[item-1])
                            } else {    // item > mois
                                if !inserted {
                                    newids.append(mois)
                                    newlabels.append(JMA.moisfr[m])
                                    inserted = true
                                }
                                newids.append(item)
                                newlabels.append(JMA.moisfr[item-1])
                            }
                        }
                    }
                    if !inserted {
                        newids.append(mois)
                        newlabels.append(JMA.moisfr[m])
                    }
                    itemids = newids
                    itemlabels = newlabels
                }
                //      print ("items : ", itemids, itemlabels)
                
            case .chart, .solde:
                insert(indice)
            case .archive:
                break   // le site web n'a plus de raison d'être apès archivage
            }
        }
        mutating func insert(_ indice:Int) {
            let new = indice
            if itemids.count == 0 {
                itemids = [new]
            } else {
                var inserted = false
                var newids: [Int] = []
                for item in itemids {
                    if item < new {
                        newids.append(item)
                    } else if item == new {
                        inserted = true
                        newids.append(item)
                    } else {    // item > an
                        if !inserted {
                            newids.append(new)
                            inserted = true
                        }
                        newids.append(item)
                    }
                }
                if !inserted {
                    newids.append(new)
                }
                itemids = newids
            }
        }
    }

    init(_ kind:Kind) {
        generator.kind = kind
    }
    
    
    init(site:String, initials:String, kind:Kind, folder:String = "") {
        generator.kind = kind
        switch kind {
        case .chart:
            generator.path = "\(site)/fr/intro/"
            generator.forme = .pdfimg
            generator.slide = "\(initials)chart"
            // indice est 1 ou 2
          //  filename = "\(slide)\(indice).pdf"
          //  directory = "\(Sitegeneric.localroot)\(path)"
        // initialisé par la création de la rubrique annuelle
        case .quit:
            generator.name = "quittances\(folder)"
            generator.parent = "intro-\(folder)"
            generator.label = folder
            generator.path = "\(site)/fr/intro/\(folder)/"
            generator.forme = .pdf
            generator.slide = "\(initials)ql\(folder)"
            // indice est un mois [0,11]
         //   filename = "\(slide)\(indice+1).pdf"
         //   directory = "\(Sitegeneric.localroot)\(path)"
        case .solde:
            generator.path = "\(site)/fr/intro/"
            generator.forme = .pdfimg
            generator.slide = "\(initials)solde"
            // indice est une année
        //    filename = "\(slide)\(indice).pdf"
        //    directory = "\(Sitegeneric.localroot)\(path)\(indice)/"
        case .archive:
            generator.forme = .pdf
          //  filename = "Location-"
          //  directory = "\(Local.archiveroot)"
        }
        
    }
    
    
    
    
}



