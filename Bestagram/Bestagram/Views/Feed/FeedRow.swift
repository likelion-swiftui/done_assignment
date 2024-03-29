//
//  FeedRow.swift
//  Bestagram
//
//  Created by Donghoon Bae on 2023/01/31.
//

import SwiftUI

struct FeedRow: View {
    
    var feed: Feed
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                CircleImage(image: Image("\(feed.userProfileImage)").resizable())
                    .frame(width: 44, height: 44)
                VStack(alignment: .leading) {
                    Text("\(feed.userId)")
                        .font(.headline)
                    Text("#위치")
                        .font(.subheadline)
                }
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "ellipsis")
                }
            }.padding(.horizontal, 10)
            TabView {
                ForEach(feed.images, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.screenWidth, height: UIScreen.screenWidth)
                        .clipped()
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(width: UIScreen.screenWidth, height: UIScreen.screenWidth)
            .overlay(
                Text("\(feed.images.count)").font(.subheadline).foregroundColor(.white)
                ,alignment: .topTrailing
            )
            
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Image(systemName: "heart")
                    Image(systemName: "message")
                    Image(systemName: "paperplane")
                    Spacer()
                    Image(systemName: "bookmark")
                }
                
                Text("좋아요 \(feed.likes)개")
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Text("\(feed.userId) ").font(.headline) +
                        Text(" \(feed.content)").font(.subheadline)
                    }
                    VStack(alignment: .leading, spacing: 10) {
                        NavigationLink {
                            
                        } label: {
                            Text("댓글 \(feed.comments)개 모두 보기")
                        }
                        Text("\(feed.date)")
                    }.font(.footnote).foregroundColor(.secondary)
                }
                Spacer()
            }.padding(.horizontal, 10)
        }
    }
}

struct FeedRow_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            FeedRow(feed: Feed(userId: "_IUofficial", userProfileImage: "_IUofficial",date: Date(), images: [], content: "안녕하세요 하하", likes: 0, comments: 0))
        }
    }
}
