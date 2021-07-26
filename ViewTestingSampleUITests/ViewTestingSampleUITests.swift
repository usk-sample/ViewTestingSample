//
//  ViewTestingSampleUITests.swift
//  ViewTestingSampleUITests
//
//  Created by Yusuke Hasegawa on 2021/07/21.
//

import XCTest

class ViewTestingSampleUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        app.cells.element(boundBy: 0).tap()
//        app.tables.firstMatch.cells.element(boundBy: 0).tap()
        
        
        app.swipeUp()
        
        let textField = app.textFields.firstMatch
        textField.tap() //focus keyboard
        textField.typeText("abc")
        
        add(XCTAttachment(screenshot: app.screenshot()))
                
        app.buttons["Next"].tap()
        
        //wait for existence
        XCTAssert(app.staticTexts["Destination"].waitForExistence(timeout: 2))
        
        add(XCTAttachment.init(screenshot: app.screenshot()))
        
    }

}
