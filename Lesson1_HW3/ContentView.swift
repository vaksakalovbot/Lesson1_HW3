//
//  ContentView.swift
//  Lesson1_HW3
//
//  Created by Vladimir on 21/07/2020.
//  Copyright © 2020 Vladimir. All rights reserved.
//

import SwiftUI

enum ColorsInTrafficLights {
    case red
    case yellow
    case green
}

struct ContentView: View {
    @State private var opacityRed = 0.2
    @State private var opacityYellow = 0.2
    @State private var opacityGreen = 0.2
    @State private var buttonTitle = "START"
    @State private var nextColorOn = ColorsInTrafficLights.red

    var body: some View {
        ZStack {
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                ColorCircle(color: .red, opacity: opacityRed)
                ColorCircle(color: .yellow, opacity: opacityYellow)
                ColorCircle(color: .green, opacity: opacityGreen)
                
                VStack {
                    Spacer()
                    
                    Button(action: { self.update() }) {
                        Text(buttonTitle)
                            .font(.title)
                            .padding(.horizontal, 50)
                            .padding(.vertical, 10)
                            .background(Color.blue)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.white, lineWidth: 4)
                        )
                    }
                }
                .padding()
            }
            .padding()
            
        }
    }
    
    private func update() {
        buttonTitle = "NEXT"
        opacityRed = 0.2
        opacityYellow = 0.2
        opacityGreen = 0.2
        switch nextColorOn {
        case .red:
            opacityRed = 1.0
            nextColorOn = .yellow
        case .yellow:
            opacityYellow = 1.0
            nextColorOn = .green
        case .green:
            opacityGreen = 1.0
            nextColorOn = .red
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
