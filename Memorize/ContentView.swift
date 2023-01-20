//
//  ContentView.swift
//  Memorize
//
//  Created by Emma Walker - TVandMobile Platforms - Core Engineering on 20/01/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
//            ContentView()
//                .previewDevice("iPhone 8")
//                .previewDisplayName("iPhone 8")
//                .environment(\.sizeCategory, .accessibilityLarge)
            ContentView()
                .previewDevice("iPhone 13 mini")
                .previewDisplayName("iPhone 13 mini")
//            ContentView()
//                .previewDevice("iPhone 14 Pro Max")
//                .previewDisplayName("iPhone 14 Pro Max")
        }
    }
}
