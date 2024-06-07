//
//  ContentView.swift
//  MarioKart Racer Generator
//
//  Created by Steven Vandegrift on 6/6/24.
//

import SwiftUI

struct ContentView: View {        
    @State private var currentCharacter = characters.randomElement()
    @State private var currentKart = karts.randomElement()
    @State private var currentWheels = wheels.randomElement()
    @State private var currentGlider = gliders.randomElement()
    
    var body: some View {
        VStack {
            Spacer()
            Text("MarioKart Racer Generator")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .foregroundStyle(.white)
                .padding()
            Spacer()
            Image(currentCharacter ?? "mario")
                .padding()
            Image(currentKart ?? "standardkart")
                .padding()
            HStack {
                Image(currentWheels ?? "standardwheels")
                    .padding()
                Image(currentGlider ?? "superglider")
                    .padding()
            }
            Spacer()
            Button {
                withAnimation(.easeInOut(duration: 0.3)) {
                    currentCharacter = characters.randomElement()
                    currentKart = karts.randomElement()
                    currentWheels = wheels.randomElement()
                    currentGlider = gliders.randomElement()
                }
            } label: {
                Text("Generate")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                    .foregroundStyle(.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 5)
                            .foregroundStyle(.white)
                    )
            }
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Image("AppBackground")
        }
    }
}

#Preview {
    ContentView()
}
