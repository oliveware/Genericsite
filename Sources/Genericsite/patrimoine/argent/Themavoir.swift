//
//  Themargent.swift
//  Genericsite
//
//  Created by Herve Crespel on 03/12/2024.
//

import SwiftUI
import Attribex
import Semantex

public struct Themavoir: View {
    @Binding var themavoir: Theme
    @State var avoir: Avoir
    @State var publier = false
    
    @State private var ajoutmode = false
    
    public init(_ themavoir:Binding<Theme>) {
        _themavoir = themavoir
        avoir = Avoir(themavoir.wrappedValue)
    }
    
    public var body: some View {
        VStack {
            AvoirView($avoir)
            Button(action:update)
            {Text("publier")}
        }
            
    }
    
    func update() {
        themavoir.update(avoir)
    }

    func delete(_ id:Int) {
      //  avoir.delete(id)
    }
   
}

struct ThemavoirPreview: View {
    @State var theme = sampleintro
    var body: some View {
        Themavoir( $theme )
    }
}

#Preview {
    ThemavoirPreview()
}
