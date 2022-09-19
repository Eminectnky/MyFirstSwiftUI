//
//  WeatherButton.swift
//  MyFirstSwiftUI
//
//  Created by Emine CETINKAYA on 19.09.2022.
//

import SwiftUI

struct WeatherButton: View{
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
        Text("Change Day Time")
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system (size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
        
        
    }
}
      
