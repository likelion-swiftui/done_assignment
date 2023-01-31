//
//  ExplorView.swift
//  Bestagram
//
//  Created by Donghoon Bae on 2023/01/31.
//

import SwiftUI

struct ExplorView: View {
    
    var cols = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
    ]
    
    @State private var searchText: String = ""
    @ObservedObject var feedStore: FeedStore = FeedStore()
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: cols, spacing: 1) {
                ForEach(feedStore.feedList, id: \.id) { feed in
                    NavigationLink {
                        ScrollView {
                            FeedRow(feed: feed)
                        }
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
