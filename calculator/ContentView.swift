//
//  ContentView.swift
//  calculator
//
//  Created by Emiel lauwers on 20/02/2025.
//

import SwiftUI

enum CalcButton: String {
    case een
    case twee
    case drie
    case vier
    case vijf
    case zes
    case zeven
    case acht
    case negen
    case nul
    case add
    case verminder
    case deel
    case maal
    case gelijk
    case clear
    case decimal
    case procent
    case negatief
}

struct ContentView: View {
    
    let butttons: [[CalcButton]] = [
        [.zeven, .acht, .negen]
    ]
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack{
                HStack{
                    Spacer()
                    Text("0")
                        .bold()
                        .font(.system(size: 60))
                        .foregroundColor(.white)
                    
                }
                .padding()
                
                ForEach(butttons, id: \.self) { rij in
                    ForEach(rij, id: \.self)
                    
                }
            }
            
            
            
        }
        
    }
}

#Preview {
    ContentView()
}
