//
//  SwitchView.swift
//  ViewTestingSample
//
//  Created by Yusuke Hasegawa on 2021/07/28.
//

import SwiftUI

struct SwitchView: View {
    
    @State private var isOn1: Bool = false
    @State private var isOn2: Bool = false

    var body: some View {
        
        //success
//        VStack {
//            Toggle("Switch 1", isOn: $isOn1)
//            Toggle("Switch 2", isOn: $isOn2)
//        }.padding()
        
        //failed
        List {
            Toggle("Switch 1", isOn: $isOn1)
            Toggle("Switch 2", isOn: $isOn2)
        }
        
    }
}

struct SwitchView_Previews: PreviewProvider {
    static var previews: some View {
        SwitchView()
    }
}
