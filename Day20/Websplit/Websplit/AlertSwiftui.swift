//
//  AlertSwiftui.swift
//  Websplit
//
//  Created by serkan on 4.09.2024.
//

import SwiftUI

struct AlertSwiftui: View {
    @State var showSheet : Bool = false
    var body: some View {
        Button("Click"){
            showSheet.toggle()
        }
        .alert("Important message", isPresented: $showSheet){
            Button("Ok"){}
        }
    }
        
}

#Preview {
    AlertSwiftui()
}
