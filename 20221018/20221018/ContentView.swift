//
//  ContentView.swift
//  20221018
//
//  Created by Donghoon Bae on 2022/10/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            PageView()
                .navigationBarTitle("Page", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
