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
        
        let deviceMatrix = ["iPhone 8",
                            "iPhone 13 mini",
                            "iPhone 14 Pro Max"]
        
        ForEach(deviceMatrix, id: \.self) { deviceName in
            ContentView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
//                .environment(\.sizeCategory, .accessibilityLarge)
        }
    }
}
