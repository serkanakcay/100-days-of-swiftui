//
//  Loops.swift
//  WeSplit
//
//  Created by serkan on 20.08.2024.
//

import SwiftUI

struct Loops: View {
    let studens = ["Harry", "Hermione", "Ron"]
    @State var selecetedStudens  = "Harry"
    var body: some View {
        Form{
            Picker("Select your studen ", selection: $selecetedStudens)
            {
                ForEach(studens, id: \.self){
                    Text($0)
                }
            }
        }
    }
}

#Preview {
    Loops()
}
