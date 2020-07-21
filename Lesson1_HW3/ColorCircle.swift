//
//  ColorCircle.swift
//  Lesson1_HW3
//
//  Created by Vladimir on 21/07/2020.
//  Copyright © 2020 Vladimir. All rights reserved.
//

import SwiftUI

struct ColorCircle: View {
    let color: UIColor
    let opacity: Double
    
    var body: some View {
        Color(color)
            .opacity(opacity)
            .frame(minWidth: 10, minHeight: 10)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .orange, opacity: 0.2)
    }
}
