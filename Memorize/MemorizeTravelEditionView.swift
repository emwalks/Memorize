//
//  MemorizeView.swift
//  Memorize
//
//  Created by Emma Walker - TVandMobile Platforms - Core Engineering on 03/02/2023.
//

import SwiftUI

struct MemorizeTravelEditionView: View {
    var viewModel = TravelViewModel()
    
    var body: some View {
        VStack {
            VStack {
                ForEach(0 ..< 4) { item in
                    HStack {
                        ForEach(0 ..< 4) { item in
                            CardView(content: viewModel.emojiForCard)
                        }
                    }
                    .ignoresSafeArea()
                    .foregroundColor(viewModel.theme)
                }
                CardControls()
            }
            .padding()
        }
    }
}

struct CardControls: View {
    var body: some View {
        HStack {
            Button { } label: { Image(systemName: "plus.circle") }.imageScale(.large)
            Button("Shuffle") { }
                .font(.title2)
            Button { } label: { Image(systemName: "minus.circle") }.imageScale(.large)
        }
    }
}

struct MemorizeTravelEditionView_Previews: PreviewProvider {
    static var previews: some View {
        MemorizeTravelEditionView()
    }
}

class TravelViewModel {
    
    var theme: Color = .red
    var arrayOfPossibleEmojis = ["🚗","✈️","⛵️","🚁","🚃","🚲","🚀","🚌", "🚗","✈️","⛵️","🚁","🚃","🚲","🚀","🚌"]
    
    var emojiForCard: String { getEmoji() }
  
    private func getEmoji() -> String {
        var arrayOfEmojis = arrayOfPossibleEmojis.shuffled()
        let setEmoji = arrayOfEmojis[0]
        return setEmoji
    }
}


