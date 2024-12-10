import Oware


// racine des données
public struct Genericsite: Codable {
    var siteroot : String
    var localroot : String
    
   
    public var colors:[String] = []
    
    var name : String
    var initials : String

    
    var isNaN : Bool {
        name == "" || colors == []
    }
    
    public init(siteroot: String , localroot: String,
                name: String, initials: String
    ) {
        self.siteroot = siteroot
        self.localroot = localroot
        self.name = name
        self.initials = initials
    }
    
    //public func sitemain(patrimoine: Patrimoine) -> Sitemain {
    public func sitemain(theme:Theme) -> Sitemain {
        return Sitemain(
            exergue :
                "exergue de bas de page",
            go: "retour ...",
            titrage : ["Grand", " ", "titre"],
            maxime: "exergue d'accueil",
            accueil: "invitation à la suite",
            intro: theme
            )
    }
    public func master() -> Sitemaster {
        return Sitemaster()
    }

}



