//
//  FeedView.swift
//  Bestagram
//
//  Created by Donghoon Bae on 2023/01/31.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(0...5, id: \.self) { story in
                        Text("\(story)")
                    }
                }
            }
            ScrollView {
                ForEach(0...10, id: \.self) { feed in
                    Text("\(feed)")
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
