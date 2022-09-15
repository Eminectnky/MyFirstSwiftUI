//
//  GameStore.swift
//  MyFirstSwiftUI
//
//  Created by Emine CETINKAYA on 15.09.2022.
// GameStore class created

import Foundation


class GameStore {
    
    var games : [Game] = []
    
    init() {
        for _ in 0..<5{
            
                createGame()
        }
    }

   @discardableResult func createGame() -> Game {
        
        let game =  Game(random: true)
        games.append(game)
        return game
        
    }
    
}
