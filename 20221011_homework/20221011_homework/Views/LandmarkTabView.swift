//
//  LandmarkTabView.swift
//  20221011_homework
//
//  Created by Donghoon Bae on 2022/11/15.
//

import SwiftUI

struct LandmarkTabView: View {
    var body: some View {
        TabView {
            NavigationStack {
                HomeView()
            }.tabItem {
                Image(systemName: "star")
                Text("Featured")
            }
            NavigationStack {
                MainView()
            }.tabItem {
                Image(systemName: "list.bullet")
                Text("List")
            }
        }
    }
}

struct LandmarkTabView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkTabView()
    }
}
