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
                NavigationLink("Simple Navigation", destination: SimpleNavigationView())
                NavigationLink("Login Form", destination: LoginFormView())
                NavigationLink("Segmented", destination: SegmentView())
                NavigationLink("Tab", destination: TabbedView())
                NavigationLink("Switch", destination: SwitchView())

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
