//
//  ImmobilierView.swift
//  Genericsite
//
//  Created by Herve Crespel on 29/10/2024.
//

import SwiftUI

import Oware

public struct ImmobilierView: View {
    @Binding var immeubles:Immobilier
    
    public init(_ immo:Binding<Immobilier>) {
        _immeubles = immo
    }
    
    public var body:some View {
        ScrollView {
            ForEach ($immeubles.immeubles) {
                immeuble in
                ImmeubleView(immeuble)
            }
        }
    }
}

struct ImmobilierPreview:View {
    @State var immobilier  = Immobilier(immeubles: [seclin67])
    
    var body: some View {
        ImmobilierView($immobilier)
    }
}

#Preview {
    ImmobilierPreview()
}
