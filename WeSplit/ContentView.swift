//
//  ContentView.swift
//  WeSplit
//
//  Created by Tony Langworthy on 7/30/23.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    @State private var name = ""
    
    var body: some View {
        
        NavigationStack {
            Form {
                Button("Tap Count: \(tapCount)") {
                    self.tapCount += 1
                }
                
                TextField("Enter your name", text: $name)
                Text("Hello, \(name)!")
            }

        }.navigationTitle("SwiftUI")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
