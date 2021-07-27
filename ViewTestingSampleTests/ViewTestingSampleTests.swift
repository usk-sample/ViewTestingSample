//
//  ViewTestingSampleTests.swift
//  ViewTestingSampleTests
//
//  Created by Yusuke Hasegawa on 2021/07/21.
//

import XCTest

import ViewInspector

@testable import ViewTestingSample

extension ContentView: Inspectable { }
extension LoginFormView: Inspectable { }

class ViewTestingSampleTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        
        let view = LoginFormView()
        
        try view.inspect().vStack().textField(0).setInput("abcde")
                
        add(XCTAttachment.init(image: view.snapshot()))
        
    }

}
