//
//  ContentView.swift
//  20221213_homework_twitter
//
//  Created by Donghoon Bae on 2022/12/19.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var feedStore: FeedStore
    
    var body: some View {
        TabView {
            NavigationStack {
                HomeFeedsView()
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
                Image(systemName: "bell")
            }
            NavigationStack {
                EmptyView()
            }.tabItem {
                Image(systemName: "mail")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(FeedStore())
    }
}
