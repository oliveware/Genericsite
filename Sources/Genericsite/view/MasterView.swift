//
//  MasterView.swift
//  Genericsite
//
//  Created by Herve Crespel on 01/10/2024.
//


import SwiftUI

public struct MasterView: View {
    @Binding var sitemaster: Sitemaster
    
    public init(_ master:Binding<Sitemaster>) {
        _sitemaster = master
    }
    
    public var body: some View {
        
        Text(sitemaster.favicon)
    }

}
