//
//  MemorizeView.swift
//  Memorize
//
//  Created by Emma Walker - TVandMobile Platforms - Core Engineering on 03/02/2023.
//

import SwiftUI

struct MemorizeTravelEditionView: View {
    var body: some View {
        VStack {
            ForEach(0 ..< 4) { item in
                HStack {
                    ForEach(0 ..< 4) { item in
                        CardView()
                    }
                }
            }
        }
        .foregroundColor(.red)
        .padding()
    }
}

struct MemorizeTravelEditionView_Previews: PreviewProvider {
    static var previews: some View {
        MemorizeTravelEditionView()
    }
}


class TravelModel: ObservableObject {
    
    @Published var emojiForCard: String = ""
    private var arrayOfPossibleEmojis = ["🚗","✈️","⛵️","🚁","🚃","🚲","🚀","🚌"]
    
    init() {
        getEmoji()
    }
    
    private func getEmoji() {
        guard let emoji = arrayOfPossibleEmojis.randomElement() else { return }
        guard let index = arrayOfPossibleEmojis.firstIndex(of: emoji) else { return }
        arrayOfPossibleEmojis.remove(at: index)
        self.emojiForCard = emoji
    }
}
