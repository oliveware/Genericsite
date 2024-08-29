// The Swift Programming Language
// https://docs.swift.org/swift-book

public struct Genericsite: Codable {
    static var siteroot = "locations/"
    static var localroot = "locations/site/"
    
    var name : String = ""
    var initials : String = ""
    var sitemain = Sitemain(Theme("",""))
    var sitemaster = Sitemaster()
    
    var isNaN : Bool {
        name == ""
    }
    
    mutating func generate(_ titre:String, _ label:String) {
        sitemain = Sitemain(Theme(titre,label))
        sitemaster = Sitemaster()
    }
    init() {}
    init(_ intro:Theme) {
      //  histoconso = Interpolan(logement.index)
      //  mainjson.intro = Theme(location)
    }
}

/*
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
}*/