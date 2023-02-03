//
//  MemorizeView.swift
//  Memorize
//
//  Created by Emma Walker - TVandMobile Platforms - Core Engineering on 03/02/2023.
//

import SwiftUI

struct MemorizeTravelEditionView: View {
    var model = TravelModel()
    
    var body: some View {
        VStack {
            ForEach(0 ..< 4) { item in
                HStack {
                    ForEach(0 ..< 4) { item in
                        CardView(content: model.emojiForCard)
                    }
                }
                .ignoresSafeArea()
            }
        }
        .foregroundColor(model.theme)
        .padding()
    }
}

struct MemorizeTravelEditionView_Previews: PreviewProvider {
    static var previews: some View {
        MemorizeTravelEditionView()
    }
}

class TravelModel {
    
    var emojiForCard: String { getEmoji() }
    var theme: Color = .red
    
    private var arrayOfPossibleEmojis = ["🚗","✈️","⛵️","🚁","🚃","🚲","🚀","🚌"]
    
    private func getEmoji() -> String {
        guard let emoji = arrayOfPossibleEmojis.randomElement() else { return "" }
        return emoji
    }
}
