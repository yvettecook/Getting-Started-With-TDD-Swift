//
//  Brain.swift
//  FizzBuzz
//
//  Created by Yvette on 17/09/2018.
//  Copyright © 2018 yvette. All rights reserved.
//

import Foundation

class Brain {

    func check(number: Int) -> Move {
        if isDivisibleByFifteen(number: number) {
            return .fizzBuzz
        } else if isDivisibleByThree(number: number) {
            return .fizz
        } else if isDivisibleByFive(number: number) {
            return .buzz
        } else {
            return .number
        }
    }

    func isDivisibleBy(divisor: Int, number: Int) -> Bool {
        return number % divisor == 0

    }

    func isDivisibleByThree(number: Int) -> Bool {
        return isDivisibleBy(divisor: 3, number: number)
    }

    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisibleBy(divisor: 5, number: number)
    }

    func isDivisibleByFifteen(number: Int) -> Bool {
        return isDivisibleBy(divisor: 15, number: number)
    }
    
}
