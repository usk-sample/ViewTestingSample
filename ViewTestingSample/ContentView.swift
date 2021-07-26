//
//  ContentView.swift
//  ViewTestingSample
//
//  Created by Yusuke Hasegawa on 2021/07/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            
            List {
                NavigationLink.init("Simple Navigation", destination: SimpleNavigationView())
                NavigationLink.init("Login Form", destination: LoginFormView())
            }
            .navigationBarTitle("View Testing")
            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
