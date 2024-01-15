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
                    .font(.system(size: 60))
            }
            
            Stepper(value: $firstNumber, label: {
                Text("select first number")
            })
            
            HStack{
                Text("+")
                    .font(.system(size: 60))
                    .padding()
                
                Spacer()
                
                Text("\(secondNumber)")
                    .font(.system(size: 60))
                    .padding()
            }
            
            Stepper(value: $secondNumber, label: {
                Text("select second number")
            })
            
            HStack{
                Spacer()
                
                Text("\(sum)")
                    .font(.system(size: 60))
                    .padding()
            }
            
        }
        .padding()
    }
}

#Preview {
    
    TabView {
      
        ContentView()
            .tabItem {
                Image (systemName: "plus")
                Text("Plus")
            }
        
        Minus()
            .tabItem {
                Image (systemName: "minus")
                Text("Minus")
            }
        
        Multiply()
            .tabItem {
                Image (systemName: "multiply")
                Text("Multiply")
            }
        
        Divide()
            .tabItem {
                Image (systemName: "divide")
                Text("Divide")
            }
        
    }
    
    .accentColor(.purple)
    
}
