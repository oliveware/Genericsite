import Oware


// racine des données
public struct Genericsite: Codable {
    var siteroot : String
    var localroot : String
    
    public var main:Sitemain
    public var master:Sitemaster
    public var colors:[String] {
        main.intro.colors
    }
    
    var name : String
    var initials : String

    
    var isNaN : Bool {
        name == "" || colors == []
    }
    
    public init(siteroot: String , localroot: String,
                name: String, initials: String,
                intro: Theme,
                immo: String, contacts: String,
                tables:String
    ) {
        self.siteroot = siteroot
        self.localroot = localroot
        self.name = name
        self.initials = initials
        
        main = Sitemain(
            exergue :
                "exergue de bas de page",
            go: "retour ...",
            titrage : ["Grand", " ", "titre"],
            maxime: "exergue d'accueil",
            accueil: "invitation à la suite",
            
            intro: intro,
            immobilier:Immobilier(immo),
            contacts:Contacts(contacts),
            contexte: Contexte(tables)
            )
        
        master = Sitemaster()
    }

}



