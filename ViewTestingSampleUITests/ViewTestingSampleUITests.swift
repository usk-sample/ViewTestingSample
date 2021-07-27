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
        
        //メールアドレス欄を入力
        app.textFields.firstMatch.tap()
        app.textFields.firstMatch.typeText("sample@example.com")
        
        //先にパスワードを入力
        app.secureTextFields.firstMatch.tap()
        app.textFields.firstMatch.tap()
        app.secureTextFields.firstMatch.tap()

        //※キーボードが表示されない
        
        debugPrint(app.menuBars)
        
        XCTAssertTrue(app.keyboards.buttons["Return"].waitForExistence(timeout: 4.0))
        app.keys["t"].tap()
        app.keys["e"].tap()
        app.keys["s"].tap()
        app.keys["t"].tap()

//        app.secureTextFields.firstMatch.typeText("test1234")
        
        debugPrint("*** keyboard buttons")
        debugPrint(app.keyboards.buttons)
        debugPrint(app.keyboards.menuButtons)
        debugPrint(app.keyboards.menuItems)

        
//        app.keyboards.buttons["Return"].tap()
//        app.secureTextFields.firstMatch.doubleTap()
//        app.menuItems["Paste"].tap()
        
        //secureTextFieldのinputの仕方
        //https://developer.apple.com/forums/thread/5910
                
        sleep(2)
        
    }

}
