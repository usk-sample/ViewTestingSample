//
//  SwipeView.swift
//  ViewTestingSample
//
//  Created by Yusuke Hasegawa on 2021/07/28.
//

import SwiftUI

struct SwipeView: View {
    var body: some View {
        List {
            ForEach.init(1..<100) { index in
                Text("Index : \(index)")
            }
        }
    }
}

struct SwipeView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeView()
    }
}
