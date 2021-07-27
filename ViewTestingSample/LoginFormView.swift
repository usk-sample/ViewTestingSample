//
//  LoginFormView.swift
//  ViewTestingSample
//
//  Created by Yusuke Hasegawa on 2021/07/26.
//

import SwiftUI

struct LoginFormView: View {
    
    @State var name: String = ""
    @State var pass: String = ""
    @State var disabled: Bool = true
            
    var body: some View {
        VStack(spacing: 32) {
            
            TextField("user name", text: $name, onCommit: {
                updateButton()
            }).textFieldStyle(RoundedBorderTextFieldStyle())
            SecureField("password", text: $pass, onCommit: {
                updateButton()
            }).textFieldStyle(RoundedBorderTextFieldStyle())

            Button.init("Login") {
                debugPrint("do login")
            }.disabled(disabled)
        }.padding(16)
    }
    
    private func updateButton() {
        disabled = name.isEmpty || pass.isEmpty
    }
    
}

struct LoginFormView_Previews: PreviewProvider {
    static var previews: some View {
        LoginFormView()
    }
}
