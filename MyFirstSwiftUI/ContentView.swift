//
//  ContentView.swift
//  MyFirstSwiftUI
//
//  Created by Emine CETINKAYA on 13.09.2022.


import SwiftUI



struct ContentView: View {
    
    let gameStore = GameStore()
    var body: some View {
        List(gameStore.games){ (game) in
            
            HStack{
                
            
                VStack(alignment:.leading){
                Text(game.name)
                      .font(.body)
                Text(game.serialNumber)
                        .font(.caption)
                        .foregroundColor(Color(white: 0.65))
                
            }
                Spacer()
                Text("\(game.priceInDollars)")
                    .font(.title2)
            }
            
         
        }
   
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
