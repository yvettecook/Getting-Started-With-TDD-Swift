//
//  BrainTests.swift
//  FizzBuzzTests
//
//  Created by Yvette on 17/09/2018.
//  Copyright © 2018 yvette. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class BrainTests: XCTestCase {

    let brain = Brain()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testIsDivisibleByThree() {
        let result = brain.isDivisibleByThree(number: 3)
        XCTAssertEqual(result, true)
    }

    func testIsNotDivisibleByThree() {
        let result = brain.isDivisibleByThree(number: 1)
        XCTAssertEqual(result, false)
    }

    func testIsDivisibleByFive() {
        let result = brain.isDivisibleByFive(number: 5)
        XCTAssertEqual(result, true)
    }

    func testIsNotDivisibleByFive() {
        let result = brain.isDivisibleByFive(number: 1)
        XCTAssertEqual(result, false)
    }

    func testIsDivisibleByFifteen() {
        let result = brain.isDivisibleByFifteen(number: 15)
        XCTAssertEqual(result, true)
    }

    func testIsNotDivisibleByFifteen() {
        let result = brain.isDivisibleByFifteen(number: 1)
        XCTAssertEqual(result, false)
    }

    func testSayFizz() {
        let result = brain.check(number: 3)
        XCTAssertEqual(result, Move.fizz)
    }

    func testSayBuzz() {
        let result = brain.check(number: 5)
        XCTAssertEqual(result, Move.buzz)
    }

    func testSayFizzBuzz() {
        let result = brain.check(number: 15)
        XCTAssertEqual(result, Move.fizzBuzz)
    }

    func testSayNumber() {
        let result = brain.check(number: 1)
        XCTAssertEqual(result, Move.number)
    }

}
