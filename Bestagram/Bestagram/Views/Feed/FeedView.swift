//
//  FeedView.swift
//  Bestagram
//
//  Created by Donghoon Bae on 2023/01/31.
//

import SwiftUI

struct FeedView: View {
    
    @ObservedObject private var feedStore: FeedStore = FeedStore()
    
    var body: some View {
        VStack {
//            ScrollView(.horizontal) {
//                HStack {
//                    ForEach(0...5, id: \.self) { story in
//                        Text("\(story)")
//                    }
//                }
//            }
            ScrollView {
                ForEach(feedStore.feedList, id: \.id) { feed in
                    FeedRow(feed: feed)
                }
            }
        }
        .navigationTitle("bestagram")
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            FeedView()
        }
    }
}
