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
        VStack {
            NavigationLink("🚗 Car Edition") { MemorizeCarEditionView() }
                .padding()
            NavigationLink("👻 Halloween Edition") { GameB() }
            //default padding is useful as it will be platform specific - eg watch etc
                .padding()
                .navigationTitle("Memorize")
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
            MemorizeView()
        }
        
        let deviceMatrix = [
//                        "iPhone 8",
//                        "iPhone 14 Pro Max",
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
