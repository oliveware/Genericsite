//
//  ImmobilierView.swift
//  Genericsite
//
//  Created by Herve Crespel on 29/10/2024.
//

import SwiftUI

import Oware

public struct ImmobilierView: View {
    @Binding var immo:Immobilier
    
    public init(_ immo:Binding<Immobilier>) {
        _immo = immo
    }
    
    public var body:some View {
        ScrollView {
            ForEach ($immo.fonciers) {
                foncier in
                FoncierView(foncier)
            }
        }
    }
}

struct ImmobilierPreview:View {
    @State var immo  = Immobilier(immosample)
    
    var body: some View {
        ImmobilierView($immo)
            .frame(width:600)
    }
}

#Preview {
    ImmobilierPreview()
}
