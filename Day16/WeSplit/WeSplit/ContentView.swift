//
//  ContentView.swift
//  WeSplit
//
//  Created by serkan on 20.08.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            Form{
                Section{
                    Text("Hello world")
                }
                Text("Hello world")
                Section{
                    Text("Hello world")
                    Text("Hello world")
                }
            }
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
#Preview {
    ContentView()
}
