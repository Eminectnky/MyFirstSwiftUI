//
//  ContentView.swift
//  MyFirstSwiftUI
//
//  Created by Emine CETINKAYA on 13.09.2022.

//new project created
// gradient added
//added city text in VStack
//SF Symbols
//Main VStack
//sf symbol loaded and image added

import SwiftUI


struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.blue)
            LinearGradient(gradient: Gradient(colors:[.blue, . white]),
                           startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack{
                    
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                    Text("76°")
                }
                Spacer()
                  
                
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}
