//
//  ContentView.swift
//  Bestagram
//
//  Created by Donghoon Bae on 2023/01/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationStack {
                FeedView()
            }.tabItem {
                Image(systemName: "house")
            }
            NavigationStack {
                EmptyView()
            }.tabItem {
                Image(systemName: "magnifyingglass")
            }
            NavigationStack {
                EmptyView()
            }.tabItem {
                Image(systemName: "play.square")
            }
            NavigationStack {
                EmptyView()
            }.tabItem {
                Image(systemName: "bag")
            }
            NavigationStack {
                EmptyView()
            }.tabItem {
                Image(systemName: "person.circle")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
