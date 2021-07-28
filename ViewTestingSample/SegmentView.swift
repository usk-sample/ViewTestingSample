//
//  SegmentView.swift
//  ViewTestingSample
//
//  Created by Yusuke Hasegawa on 2021/07/28.
//

import SwiftUI

struct SegmentView: View {
    
    @State private var selected: Int = 0
    
    var body: some View {
        
        VStack(spacing: 32) {
            
            Picker("Segment", selection: $selected) {
                Text("One")
                    .tag(0)
                Text("Two")
                    .tag(1)
                Text("Three")
                    .tag(2)
            }
            .pickerStyle(SegmentedPickerStyle())
            
            if selected == 0 {
                Text("One")
            } else if selected == 1 {
                Text("Two")
            } else {
                Text("Three")
            }
            
        }
        .padding()
    }
}

struct SegmentView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentView()
    }
}
