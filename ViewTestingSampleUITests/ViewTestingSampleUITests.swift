//
//  ViewTestingSampleUITests.swift
//  ViewTestingSampleUITests
//
//  Created by Yusuke Hasegawa on 2021/07/21.
//

import XCTest

class ViewTestingSampleUITests: XCTestCase {

    let app = XCUIApplication()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        debugPrint("***** setUpWithError")

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        
        app.launch()
        
        app.cells.element(boundBy: 0).tap()
                
        let textField = app.textFields.firstMatch
        textField.tap() //focus keyboard
        textField.typeText("abc")
        
        add(XCTAttachment(screenshot: app.screenshot()))
                
        app.buttons["Next"].tap()
        
        //wait for existence
        XCTAssert(app.staticTexts["Destination"].waitForExistence(timeout: 2))
        
        add(XCTAttachment.init(screenshot: app.screenshot()))
        
    }
    
    func testLoginForm() throws {
        app.launch()
        
        //ログインフォームに移動
        app.cells.element(boundBy: 1).tap()
        
        //メールアドレス欄に入力
        app.textFields.firstMatch.tap()
        app.textFields.firstMatch.typeText("sample@example.com")
        
        //パスワードを入力
        app.secureTextFields.firstMatch.tap()
        app.secureTextFields.firstMatch.typeText("test1234")
        app.keyboards.buttons["Return"].tap()
        
        sleep(2)
        add(XCTAttachment(screenshot: app.screenshot()))
        
    }
    
    func testSegmented() throws {
        
        app.launch()
        
        app.cells.element(boundBy: 2).tap()
        
        app.segmentedControls.firstMatch.buttons.element(boundBy: 0).tap()
        add(XCTAttachment(screenshot: app.screenshot()))

        app.segmentedControls.firstMatch.buttons.element(boundBy: 1).tap()
        add(XCTAttachment(screenshot: app.screenshot()))

        app.segmentedControls.firstMatch.buttons.element(boundBy: 2).tap()
        add(XCTAttachment(screenshot: app.screenshot()))
        
    }

    func testTab() throws {
        
        app.launch()
        
        app.cells.element(boundBy: 3).tap()
        
        app.tabBars.buttons.element(boundBy: 0).tap()
        add(XCTAttachment(screenshot: app.screenshot()))

        app.tabBars.firstMatch.buttons.element(boundBy: 1).tap()
        add(XCTAttachment(screenshot: app.screenshot()))
        
    }
    
    func testSwitch() throws {
        
        app.launch()
        
        app.cells.element(boundBy: 4).tap()
        
        app.switches.element(boundBy: 0).tap()
        debugPrint(app.switches.element(boundBy: 0))

        sleep(2)
        
//        add(XCTAttachment(screenshot: app.screenshot()))

        app.switches.element(boundBy: 1).tap()
//        add(XCTAttachment(screenshot: app.screenshot()))
        
        sleep(2)

    }
    
}
