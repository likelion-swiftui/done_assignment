//
//  HomeFeedsView.swift
//  20221213_homework_twitter
//
//  Created by Donghoon Bae on 2022/12/19.
//

import SwiftUI

struct HomeFeedsView: View {
    @EnvironmentObject var feedStore: FeedStore
    
    var body: some View {
        VStack {
            List {
                ForEach(feedStore.feeds, id: \.id) { feed in
//                    VStack {
//                        NavigationLink {
//                            EmptyView()
//                        } label: {
                            ListRow(feed: feed)
//                        }
//                        ButtonsRow(feed: feed)
//                    }
                }
            }.listStyle(.plain)
                .navigationTitle("twitter")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Image(systemName: "person.circle.fill")
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Image(systemName: "sparkles")
                    }
                }
        }
    }
}

struct HomeFeedsView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFeedsView()
            .environmentObject(FeedStore())
    }
}
