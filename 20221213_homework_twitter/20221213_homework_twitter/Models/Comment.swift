//
//  Comment.swift
//  20221213_homework_twitter
//
//  Created by Donghoon Bae on 2022/12/19.
//

import Foundation

struct Comment: Identifiable, Hashable {
    var id = UUID()
    var userName: String
    var userID: String
    var content: String
    var likes: Int
    var reTweet: Int
}
