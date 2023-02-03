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

struct GameEmporiumView: View {
    var body: some View {
        VStack {
            NavigationLink("Memorize Game") { MemorizeView() }
                .padding()
            NavigationLink("Concentration Game") { GameB() }
            //default padding is useful as it will be platform specific - eg watch etc
                .padding()
                .navigationTitle("Game Emporium")
        }
    }
}

struct MemorizeView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe.europe.africa")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
                .padding(.all)
        }
    }
}

struct GameB: View {
    var body: some View {
        VStack {
            Image(systemName: "moon.stars")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, space!")
                .padding(.all)
            
        }
    }
}


struct MemorizeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            GameEmporiumView()
        }
        
        let deviceMatrix = [
//                        "iPhone 8",
//                        "iPhone 14 Pro Max",
            "iPhone 13 mini"
        ]
        
        ForEach(deviceMatrix, id: \.self) { deviceName in
            GameEmporiumView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
            //                .environment(\.sizeCategory, .accessibilityLarge)
        }
    }
}
