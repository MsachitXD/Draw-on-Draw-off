//
//  ContentView.swift
//  Draw on Draw off
//
//  Created by Sachit Mittal on 01/10/25.
//

import SwiftUI

struct SymbolDrawDemo: View {
    var body: some View {
        VStack{
            DrawOnToggleView(
                title: "Draw On",
                effect: .drawOn.individually,
                speed: 5
            )
        }
        .padding()
    }
}

#Preview {
    SymbolDrawDemo()
}
