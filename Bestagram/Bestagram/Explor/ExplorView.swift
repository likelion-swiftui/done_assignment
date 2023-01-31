//
//  ExplorView.swift
//  Bestagram
//
//  Created by Donghoon Bae on 2023/01/31.
//

import SwiftUI

struct ExplorView: View {
    
    var images: [String] = ["_IUofficial", "aespa_official", ]
    var cols = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    @State private var searchText: String = ""
    @ObservedObject var feedStore: FeedStore = FeedStore()
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: cols) {
                ForEach(feedStore.feedList, id: \.id) { feed in
                    NavigationLink {
                        EmptyView()
                    } label: {
                        SquareFeed(imageName: feed.images.first!)
                    }
                }
            }.searchable(text: $searchText)
        }
    }
}

struct ExplorView_Previews: PreviewProvider {
    static var previews: some View {
        ExplorView()
    }
}
