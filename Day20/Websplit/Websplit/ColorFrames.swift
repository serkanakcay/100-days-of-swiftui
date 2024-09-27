//
//  ColorFrames.swift
//  Websplit
//
//  Created by serkan on 4.09.2024.
//

import SwiftUI

struct ColorFrames: View {
    var body: some View {
        ZStack{
           /* Color.red
                .frame(width: 200, height: 200)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            */
            Color(red:1, green: 0.6, blue: 0)
            Text("Your Content")
        }
        .ignoresSafeArea()
        
    }
}

#Preview {
    ColorFrames()
}
