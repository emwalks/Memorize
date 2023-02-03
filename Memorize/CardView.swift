//
//  CardView.swift
//  Memorize
//
//  Created by Emma Walker - TVandMobile Platforms - Core Engineering on 03/02/2023.
//

import SwiftUI

struct CardView: View {
    var model = TravelModel()
    var isFaceUp: Bool { return true }
    
    var body: some View {
        // ZStack builds from device towards user
        ZStack {
            let cardShape = RoundedRectangle(cornerRadius: 18, style: .circular)
            if isFaceUp {
                cardShape.foregroundColor(.white)
                cardShape.stroke(lineWidth: 3)
                Text(model.emojiForCard)
                    .font(.largeTitle)
            } else {
                cardShape.fill()
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}


