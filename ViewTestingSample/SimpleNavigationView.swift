//
//  SimpleNavigationView.swift
//  ViewTestingSample
//
//  Created by Yusuke Hasegawa on 2021/07/26.
//

import SwiftUI

struct SimpleNavigationView: View {
    
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        VStack(spacing: 16) {
            TextField("input text", text: self.$viewModel.text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 32)
            NavigationLink.init("Next", destination: Text("Your input : \(self.viewModel.text)").accessibilityIdentifier("Destination"))
                .accessibilityIdentifier("Next")
        }
        .navigationTitle("Simple Navigation")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}

struct SimpleNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleNavigationView()
    }
}
