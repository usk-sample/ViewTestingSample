//
//  ArgumentsView.swift
//  ViewTestingSample
//
//  Created by Yusuke Hasegawa on 2021/07/28.
//

import SwiftUI

struct ArgumentsView: View {

    private var testing: Bool = false
    private var debugText: String = ""
    
    init() {
        
        let processInfo = ProcessInfo.processInfo

        if processInfo.arguments.contains("XCUITest") {
            testing = true
            debugText = processInfo.environment["text"] ?? ""
        }
        
    }
    
    var body: some View {
        if testing {
            VStack {
                Text("Hello, XCUITest!")
                Text(debugText)
            }
        } else {
            Text("Hello, World!")
        }
    }
}

struct ArgumentsView_Previews: PreviewProvider {
    static var previews: some View {
        ArgumentsView()
    }
}
