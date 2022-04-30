//
//  Score.swift
//  SimpleScores
//
//  Created by Philipp on 30.04.22.
//

import Foundation

struct Score: Codable, Identifiable, Hashable {
    var id = UUID()
    var playerName = "New Player"
    var score = 0
    var color = ColorChoice.blue

    static let example = Score()
}
