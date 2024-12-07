//
//  ImmobilierView.swift
//  Genericsite
//
//  Created by Herve Crespel on 29/10/2024.
//

import SwiftUI

import Oware
import Putex

public struct ImmobilierView: View {
    @Binding var immo: [Foncier]
    
    public init(_ immo:Binding<[Foncier]>) {
        _immo = immo
    }
    
    var valeur: Montant {
        var total = Montant(0)
        for foncier in immo {
            total = total + foncier.valeur.courante
        }
        return total
    }
    
    public var body:some View {
        FonciersView($immo)
    }
}

struct ImmobilierPreview:View {
    @State var immo  : [Foncier] = []
    
    var body: some View {
        ImmobilierView($immo)
            .frame(width:900)
    }
}

#Preview {
    ImmobilierPreview()
}
