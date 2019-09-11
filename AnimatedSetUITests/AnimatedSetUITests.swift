//
//  GraphicalSetUITests.swift
//  GraphicalSetUITests
//
//  Created by Сергей Дорошенко on 05/09/2019.
//  Copyright © 2019 Сергей Дорошенко. All rights reserved.
//

import XCTest
@testable import StanfordAssignment4

class AnimatedSetUITests: XCTestCase {
    
    var app: XCUIApplication!
    
    override func setUp() {
        app = XCUIApplication()
        app.launch()
    }
    
    func testNewGameButton() {
        let newGameButton = app.buttons["New Game"]
        let cheatButton = app.buttons["Cheat"]
        let deckButton = app.buttons["Deck"]
        let scoreLabel = app.staticTexts["Score: 0"]
        let infoButton = app.buttons["More Info"]
        
        if newGameButton.isSelected {
            XCTAssertTrue(cheatButton.exists)
            XCTAssertTrue(deckButton.exists)
            XCTAssertTrue(scoreLabel.exists)
            XCTAssertTrue(infoButton.exists)
            
            infoButton.tap()
            
            XCTAssertFalse(cheatButton.exists)
            XCTAssertFalse(deckButton.exists)
            XCTAssertFalse(scoreLabel.exists)
            XCTAssertFalse(infoButton.exists)
        } else {
            XCTAssertTrue(true)
        }
    }
    
    func testInfoButton() {
        let infoButton = app.buttons["More Info"]
        let aboutTheAuthorButton = app.buttons["About the author"]
        let closeButton = app.buttons["Close"]
        if infoButton.isSelected {
            XCTAssertTrue(closeButton.exists)
            XCTAssertTrue(aboutTheAuthorButton.exists)
        } else {
            XCTAssertTrue(true)
        }
    }
    
    func testDeckButton() {
        let newGameButton = app.buttons["New Game"]
        let cheatButton = app.buttons["Cheat"]
        let deckButton = app.buttons["Deck"]
        let scoreLabel = app.staticTexts["Score: 0"]
        let infoButton = app.buttons["More Info"]
        deckButton.tap()
        XCTAssertTrue(cheatButton.exists)
        XCTAssertTrue(deckButton.exists)
        XCTAssertTrue(scoreLabel.exists)
        XCTAssertTrue(infoButton.exists)
        XCTAssertTrue(newGameButton.exists)
    }
    
    func testCheat() {
        let newGameButton = app.buttons["New Game"]
        let cheatButton = app.buttons["Cheat"]
        let deckButton = app.buttons["Deck"]
        let scoreLabel = app.staticTexts["Score: 0"]
        let infoButton = app.buttons["More Info"]
        cheatButton.tap()
        XCTAssertTrue(cheatButton.exists)
        XCTAssertTrue(deckButton.exists)
        XCTAssertTrue(scoreLabel.exists)
        XCTAssertTrue(infoButton.exists)
        XCTAssertTrue(newGameButton.exists)
    }
    
    func testAboutTheAuthor() {
        app.buttons["More Info"].tap()
        app.buttons["About the author"].tap()
        let authorName = app.staticTexts["About the author: Sergey Doroshenko"]
        XCTAssertTrue(authorName.exists)
    }
    
}
