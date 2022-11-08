//
//  ContentView.swift
//  20221108_AboutMe
//
//  Created by Donghoon Bae on 2022/11/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            AboutView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("About Me")
                }
            StoryView()
                .tabItem {
                    Image(systemName: "book.closed.fill")
                    Text("Story")
                }
            FavoriteView()
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Favorite")
                }
            FunFactsView()
                .tabItem {
                    Image(systemName: "hand.thumbsup.fill")
                    Text("Facts")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
