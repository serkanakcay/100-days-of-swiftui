//
//  Modifying.swift
//  WeSplit
//
//  Created by serkan on 20.08.2024.
//

import SwiftUI

struct Modifying: View {
  @State  var tapcount = 0
    @State var name = ""
    var body: some View {
        VStack{
            Button("Tap Count :\(tapcount)"){
                tapcount += 1
            }
            Form{
                TextField("sss", text: $name)
            }
            Form{
                ForEach(0..<100){
                    Text("Row \($0)")
                }
            }
        }
    }
}

#Preview {
    Modifying()
}
