//
//  CardView.swift
//  Memorize
//
//  Created by Emma Walker - TVandMobile Platforms - Core Engineering on 03/02/2023.
//

import SwiftUI

// SwiftUI Views are immutable!
// "Cannot assign to property: 'self' is immutable"
// Once created the view cannot be changed
// In swiftUI new views are being drawn all the time rather than changing the current one

// The @State var doesn't make the view mutable, it just marks that var to be a pointer in memory -> the pointer value can change but the view doesn't change

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = false
    
    var body: some View {
        // ZStack builds from device towards user
        ZStack {
            let cardShape = RoundedRectangle(cornerRadius: 18, style: .circular)
            if isFaceUp {
                cardShape.foregroundColor(.white)
                cardShape.stroke(lineWidth: 3)
                Text(content)
                    .font(.largeTitle)
            } else {
                cardShape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(content: "🇮🇪")
    }
}


