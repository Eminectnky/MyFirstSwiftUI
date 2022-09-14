//
//  Game.swift
//  MyFirstSwiftUI
//
//  Created by Emine CETINKAYA on 14.09.2022.
// new project created

import Foundation

class Game : NSObject {
    
    var name : String
    var priceInDollars : Double
    var serialNumber : String
    var dateCreated : Date
    
    init(name : String , priceInDollars : Double , serialNumber : String ) {
        
        self.name = name
        self.priceInDollars = priceInDollars
        self.serialNumber = serialNumber
        self.dateCreated = Date()
        
        
    }
}
