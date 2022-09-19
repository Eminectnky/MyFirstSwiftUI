//
//  ContentView.swift
//  MyFirstSwiftUI
//  Created by Emine CETINKAYA on 13.09.2022.
//added city text in VStack
//SF Symbols
//Main VStack
//sf symbol loaded and image added
//HStack of Days
//day added
//Main VStack updated
//HSatck Of Days updated
//Button & Refactor added

import SwiftUI
struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView(topColor: .blue, bottomColor: Color("lightBlue"))
            
            VStack{
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 10){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                
                .padding(.bottom, 40)
                
                HStack(spacing: 20){
                
                  WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 74)
                    
                    
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 88)
                    
                    
                    
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow",
                        temperature: 55)
                    
                    
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 60)
                
                WeatherDayView(dayOfWeek: "SAT", imageName: "snowflake", temperature: 25)
                    
               
                
                }
                Spacer()
                Button{
                print("tapped")
                
            } label: {
                Text("Change Day Time")
                    .frame(width: 280, height: 50)
                    .background(Color.white)
                    .font(.system (size: 20, weight: .bold, design: .default))
                    .cornerRadius(10)
                
            }
             Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}

struct WeatherDayView : View{
    
    var dayOfWeek: String
    var imageName : String
    var temperature :Int
        
    var body: some View {
        VStack {
            
          Text(dayOfWeek)
             .font(.system(size: 16, weight: .medium, design: .default))
             .foregroundColor(.white)
                        
          Image(systemName: imageName)
             .renderingMode(.original)
             .resizable()
             .aspectRatio(contentMode: .fit)
             .frame(width: 40, height: 40)
                        
          Text("\(temperature)°")
             .font(.system(size: 28, weight: .medium))
             .foregroundColor(.white)
        }
    }
}
                    
      
                             struct BackgroundView : View {
                                var topColor: Color
                                var bottomColor: Color
                                var body: some View {
                                
                                
                               
                                
                                LinearGradient(gradient: Gradient(colors: [topColor,bottomColor]),
                                               
                                               startPoint: .topLeading,
                                               endPoint: .bottomTrailing)
                                .edgesIgnoringSafeArea(.all)
    }
}
    struct CityTextView: View {
        var cityName : String
        
        
        var body: some View {
                                
        Text(cityName)
                                    
            .font(.system(size: 32, weight: .medium, design: .default))
                                    
            .foregroundColor(.white)
                                    
            .padding()
            
        }
        
    }
    
}
                                
                                
                            
    
    



