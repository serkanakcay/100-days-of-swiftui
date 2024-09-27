//
//  ButtonsAndİmages.swift
//  Websplit
//
//  Created by serkan on 4.09.2024.
//

import SwiftUI

struct ButtonsAndI_mages: View {
    var body: some View {
        VStack{
            Button("Button 1"){
            }
            .buttonStyle(.borderedProminent)
            
            Button("Button 2"){
            }
            .tint(.indigo)
            Button("Button 3"){
            }
            .buttonStyle(.bordered)
            Button("Button 4"){
            }
            .buttonStyle(.borderedProminent)
            
            
            Button {
                print("tapped")
            } label: {
               
                Image(systemName: "pencil")
                Text("Edit")
            }

        }
       
    }
    
}

#Preview {
    ButtonsAndI_mages()
}
