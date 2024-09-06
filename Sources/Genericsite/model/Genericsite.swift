// The Swift Programming Language
// https://docs.swift.org/swift-book

public struct Genericsite: Codable {
    static var siteroot = "locations/"
    static var localroot = "locations/site/"
    
    var name : String = ""
    var initials : String = ""

    
    var isNaN : Bool {
        name == ""
    }
    

}

