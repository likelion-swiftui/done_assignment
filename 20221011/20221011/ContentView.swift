//
//  ContentView.swift
//  20221011
//
//  Created by Donghoon Bae on 2022/10/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ForecastView()
            .background(.gray)
            .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
