// The Swift Programming Language
// https://docs.swift.org/swift-book

public struct Genericsite: Codable {
    var siteroot : String
    var localroot : String

    public var colors : [String]
    
    var name : String
    var initials : String

    
    var isNaN : Bool {
        name == "" || colors == []
    }
    
    public init(siteroot: String , localroot: String ,
                colors: [String] = ["dark", "darker", "colorA", "colorB"],
                name: String, initials: String) {
        self.siteroot = siteroot
        self.localroot = localroot
        self.colors = colors
        self.name = name
        self.initials = initials
    }

}



