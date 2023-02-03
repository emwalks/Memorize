//
//  CardView.swift
//  Memorize
//
//  Created by Emma Walker - TVandMobile Platforms - Core Engineering on 03/02/2023.
//

import SwiftUI

struct CardView: View {
    var model = CardModel()
    
    var body: some View {
        // ZStack builds from device towards user
        ZStack {
            RoundedRectangle(cornerRadius: 25,
                             style: .continuous)
            // stroke on a swiftUI Shape outlines te outside edge
            .stroke(lineWidth: 3)
            .foregroundColor(.red)
            Text(model.emojiForCard)
        }
        .padding(.horizontal)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}


