//
//  ListRow.swift
//  20221213_homework_twitter
//
//  Created by Donghoon Bae on 2022/12/19.
//

import SwiftUI

struct ListRow: View {
    
    @EnvironmentObject var feedStore: FeedStore
    @State var isLike: Bool = false
    var feed: Feed
    var feedIndex: Int {
        feedStore.feeds.firstIndex(where: { $0.id == feed.id })!
    }
    
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                CircleImage(image: Image(feed.image)
                    .resizable())
                .frame(width: 44, height: 44)
                VStack(alignment: .leading) {
                    HStack {
                        Text("\(feed.userName)").font(.headline)
                        Text("@\(feed.userID)").font(.subheadline).foregroundColor(.secondary)
                    }
                    Text("\(feed.content)").font(.subheadline)
                    HStack {
                        HStack {
                            Image(systemName: "message")
                            //checkmark.seal.fill
                            Text("\(feed.comments.count)")
                        }.onTapGesture {
                            
                        }.foregroundColor(.secondary)
                        Spacer()
                        
                        HStack {
                            Image(systemName: "arrow.2.squarepath")
                            Text("\(feed.reTweet)")
                        }.onTapGesture {
                            
                        }.foregroundColor(.secondary)
                        
                        Spacer()
                        HStack {
                            LikesButton(likes: $feedStore.feeds[feedIndex].likes, isLike: $isLike)
                            Text("\(feed.likes)")
                        }.foregroundColor(isLike ? .red : .secondary)
                        
                        Spacer()
                        
                        HStack {
                            Image(systemName: "square.and.arrow.up")
                        }.onTapGesture {
                            
                        }.foregroundColor(.secondary)
                        
                    }
                    .font(.subheadline)
                    .padding(.top, 5)
                }
            }
        }
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(feed: FeedStore().feeds.first!)
    }
}
