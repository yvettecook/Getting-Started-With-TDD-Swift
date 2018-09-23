//
//  GameTests.swift
//  FizzBuzzTests
//
//  Created by Yvette on 18/09/2018.
//  Copyright © 2018 yvette. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {

    let game = Game()

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }

    func testOnPlayScoreIncremented() {
        game.play(move: .number)
        XCTAssertTrue(game.score == 1)
    }

    func testIfMoveIsRight() {
        game.score = 2
        let response = game.play(move: .fizz)
        let result = response.right
        XCTAssertEqual(result, true)
    }

    func testIfMoveIsWrong() {
        game.score = 1
        let response = game.play(move: .fizz)
        let result = response.right
        XCTAssertEqual(result, false)
    }

    func testIfBuzzMoveRight() {
        game.score = 4
        let response = game.play(move: .buzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }

    func testIfBuzzMoveWrong() {
        game.score = 1
        let response = game.play(move: .buzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }

    func testIfFizzBuzzMoveRight() {
        game.score = 14
        let response = game.play(move: .fizzBuzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }

    func testIfFizzBuzzMoveWrong() {
        game.score = 1
        let response = game.play(move: .fizzBuzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }

    func testIfNumberMoveRight() {
        game.score = 1
        let response = game.play(move: .number)
        let result = response.right
        XCTAssertEqual(result, true)
    }

    func testIfNumberMoveWrong() {
        game.score = 2
        let response = game.play(move: .number)
        let result = response.right
        XCTAssertEqual(result, false)
    }

    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        game.play(move: .fizz)
        XCTAssertEqual(game.score, 1)
    }

    func testPlayShouldReturnIfMoveRight() {
        let response = game.play(move: .number)
        XCTAssertNotNil(response.right)
    }

    func testPlayShouldReturnNewScore() {
        let response = game.play(move: .number)
        XCTAssertNotNil(response.score)
    }
}
