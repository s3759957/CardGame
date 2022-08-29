//
//  Player.swift
//  cardGame
//
//  Created by Nguyen, Nguyen Dinh Dang on 29/08/2022.
//

import Foundation

struct Player: Identifiable, Codable {
    var id = UUID()
    var name: String
    var score: Int
}

    
