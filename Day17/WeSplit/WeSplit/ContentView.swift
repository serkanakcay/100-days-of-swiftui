//
//  ContentView.swift
//  WeSplit
//
//  Created by serkan on 20.08.2024.
//

import SwiftUI

struct ContentView: View {
    @State  var  checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage: Int = 20
    
    let tipPercentages = [15, 20, 25, 0]
    var body: some View {
        NavigationStack {
            VStack {
                Form{
                    Section{
                        Text(checkAmount, format: .currency(code: "usd"))
                        
                        
                        Picker("Number of people", selection: $numberOfPeople){
                            ForEach(1..<100){
                                Text("\($0) People")
                            }
                            .pickerStyle(.navigationLink)
                        }
                    }
                    Section("How Much do you want to tip"){
                      
                        Picker("Tip", selection: $tipPercentage){
                            ForEach(tipPercentages, id: \.self){
                                Text($0, format: .percent)
                                
                            }
                            
                        }
                        .pickerStyle(.segmented)
                        
                    }
                    Section{
                        TextField("Amount", value: $checkAmount, format: .number.precision(.fractionLength(2)))
                            .keyboardType(.decimalPad)
                    }
                    
              
                }
                .navigationTitle("WeSplit")
                
            }
        }
    }
}

#Preview {
    ContentView()
}
