//
//  ContentView.swift
//  CalculatingStepper
//
//  Created by Sophie Haber on 15.01.24.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    @State var firstNumber: Int = 1
    @State var secondNumber: Int = 1
    
    // MARK: Computed properties
    var sum: Int {
        return firstNumber + secondNumber
    }
    
    var body: some View {
        VStack {
            
            HStack{
                Spacer()
                
                Text("\(firstNumber)")
                    .padding()
            }
            
            Stepper(value: $firstNumber, label: {
                Text("select first number")
            })
            
            HStack{
                Text("+")
                    .padding()
                
                Spacer()
                
                Text("\(secondNumber)")
                    .padding()
            }
            
            Stepper(value: $secondNumber, label: {
                Text("select second number")
            })
           
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
