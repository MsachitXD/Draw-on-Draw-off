//
//  ContentView.swift
//  Draw on Draw off
//
//  Created by Sachit Mittal on 01/10/25.
//

import SwiftUI

struct SymbolDrawDemo: View {
    
    @State private var speed = 0.5
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16){
                    DrawOnToggleView(
                        title: "Draw On",
                        effect: .drawOn,
                        speed: speed
                    )
                    
                    DrawOnToggleView(
                        title: "Draw On by Layer",
                        effect: .drawOn.byLayer,
                        speed: speed
                    )
                    
                    DrawOnToggleView(
                        title: "Draw On Individually",
                        effect: .drawOn.individually,
                        speed: speed
                    )
                    
                    DrawOnToggleView(
                        title: "Draw On Whole Symbol",
                        effect: .drawOn.wholeSymbol,
                        speed: speed
                    )
                    
                    Divider()
                    
                    DrawOffToggleView(
                        title: "Draw Off",
                        effect: .drawOff,
                        speed: speed
                    )
                    
                    DrawOffToggleView(
                        title: "Draw Off by Layer",
                        effect: .drawOff.byLayer,
                        speed: speed
                    )
                    
                    DrawOffToggleView(
                        title: "Draw Off Individually",
                        effect: .drawOff.individually,
                        speed: speed
                    )
                    
                    DrawOffToggleView(
                        title: "Draw Off Whole Symbol",
                        effect: .drawOff.wholeSymbol,
                        speed: speed
                    )
                }
                .padding(.horizontal)
                .padding(.top)
            }
            .navigationTitle("Draw On and Draw Off")
            .safeAreaInset(edge: .bottom) {
                VStack {
                    Divider()
                    Slider(value: $speed, in: 0...100, step: 0.05)
                        .padding()
                }
                .background(.ultraThinMaterial)
            }
        }
    }
}

#Preview {
    SymbolDrawDemo()
}
