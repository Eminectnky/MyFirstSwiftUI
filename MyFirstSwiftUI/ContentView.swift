//
//  ContentView.swift
//  MyFirstSwiftUI
//
//  Created by Emine CETINKAYA on 13.09.2022.

//new project created
// gradient added

import SwiftUI


struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.blue)
            LinearGradient(gradient: Gradient(colors:[.blue, . white]),
                           startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}
