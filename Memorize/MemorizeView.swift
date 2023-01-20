//
//  ContentView.swift
//  Memorize
//
//  Created by Emma Walker - TVandMobile Platforms - Core Engineering on 20/01/2023.
//

import SwiftUI

// this struct behaves like a View
// Views can display contents and can receive user input via multitouch events
// Input and Output of your app
// For swift UI the only responsibility of behaving like a view is to include te body property - var body: some View

struct MemorizeView: View {
    var body: some View {
        NavigationLink("Welcome to the\nMemorize Game") {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
            }
            .padding()
        }
        .navigationTitle("Memorize")
    }
}



struct MemorizeView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            MemorizeView()
        }
        
        let deviceMatrix = [
            //            "iPhone 8",
            //            "iPhone 14 Pro Max",
            "iPhone 13 mini"
        ]
        
        ForEach(deviceMatrix, id: \.self) { deviceName in
            MemorizeView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
            //                .environment(\.sizeCategory, .accessibilityLarge)
        }
    }
}
