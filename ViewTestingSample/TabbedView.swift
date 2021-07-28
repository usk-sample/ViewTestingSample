//
//  TabbedView.swift
//  ViewTestingSample
//
//  Created by Yusuke Hasegawa on 2021/07/28.
//

import SwiftUI

struct TabbedView: View {
    
    @State var selected: Int = 0
    
    var body: some View {
                        
        TabView(selection: $selected) {
            Text("Tab Content 1")
                .tabItem { Label("Tab 1", systemImage: "sun.max.fill") }
                .tag(0)
            Text("Tab Content 2")
                .tabItem { Label("Tab 2", systemImage: "moon.fill") }
                .tag(1)
            
        }
    }
}

struct TabbedView_Previews: PreviewProvider {
    static var previews: some View {
        TabbedView()
    }
}
