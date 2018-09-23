//
//  Game.swift
//  FizzBuzz
//
//  Created by Yvette on 18/09/2018.
//  Copyright © 2018 yvette. All rights reserved.
//

import Foundation

class Game {

    var score: Int
    let brain: Brain

    init() {
        score = 0
        brain = Brain()
    }

    func play(move: Move) -> (right: Bool, score: Int) {
        let result = brain.check(number: score + 1)

        if result == move {
            score += 1
            return (true, score)
        } else {
            return (false, score)
        }
    }

}
