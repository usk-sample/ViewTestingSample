//
//  ContentView.swift
//  ViewTestingSample
//
//  Created by Yusuke Hasegawa on 2021/07/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var text: String = ""
    
    var body: some View {
        NavigationView {
            
            VStack(spacing: 16) {
                TextField("input text", text: self.$text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 32)
                NavigationLink.init("Next", destination: Text("Your input : \(self.text)"))
            }
            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
