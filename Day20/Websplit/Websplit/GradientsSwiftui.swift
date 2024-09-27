//
//  GradientsSwiftui.swift
//  Websplit
//
//  Created by serkan on 4.09.2024.
//

import SwiftUI

struct GradientsSwiftui: View {
    var body: some View {
        VStack{
            //Mark: LinearGradient
            /* LinearGradient(stops: [Gradient.Stop( color: .white, location: 0.45), Gradient.Stop(color: .black, location: 0.55)
             ], startPoint: .top, endPoint: .bottom)
             */
            // Mark: RadialGradient
            
            RadialGradient(colors:[.red, .black], center: .center, startRadius: 20, endRadius: 40)
            
            AngularGradient(colors: [.red, .blue], center: .center)
        }
        
    }
}

#Preview {
    GradientsSwiftui()
}
