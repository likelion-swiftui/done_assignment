//
//  Feed.swift
//  Bestagram
//
//  Created by Donghoon Bae on 2023/01/31.
//

import Foundation
import SwiftUI

struct Feed: Identifiable {
    let id = UUID()
    let userId: String
    let userProfileImage: String
    let date: Date
    let images: [String]
    let content: String
    let likes: Int
    let comments: Int
}

class FeedStore: ObservableObject {
    @Published var feedList: [Feed] = [
    Feed(userId: "_IUofficial", userProfileImage: "_IUofficial", date: Date(), images: ["001", "002", "003"], content: "하이", likes: 1, comments: 1),
    Feed(userId: "_IUofficial", userProfileImage: "_IUofficial", date: Date(), images: ["004", "005", "006"], content: "하이", likes: 2, comments: 2),
    Feed(userId: "_IUofficial", userProfileImage: "_IUofficial", date: Date(), images: ["007"], content: "하이", likes: 3, comments: 3),
    Feed(userId: "_IUofficial", userProfileImage: "_IUofficial", date: Date(), images: ["008"], content: "하이", likes: 4, comments: 4),
    Feed(userId: "_IUofficial", userProfileImage: "_IUofficial", date: Date(), images: ["009", "0010", "0011"], content: "하이", likes: 5, comments: 5),
    Feed(userId: "_IUofficial", userProfileImage: "_IUofficial", date: Date(), images: ["0012", "0013", "0014"], content: "하이", likes: 6, comments: 7),
    Feed(userId: "_IUofficial", userProfileImage: "_IUofficial", date: Date(), images: ["001", "002", "003"], content: "하이", likes: 1, comments: 1),
    Feed(userId: "_IUofficial", userProfileImage: "_IUofficial", date: Date(), images: ["004", "005", "006"], content: "하이", likes: 2, comments: 2),
    Feed(userId: "_IUofficial", userProfileImage: "_IUofficial", date: Date(), images: ["009", "0010", "0011"], content: "하이", likes: 5, comments: 5),
    Feed(userId: "_IUofficial", userProfileImage: "_IUofficial", date: Date(), images: ["0012", "0013", "0014"], content: "하이", likes: 6, comments: 7),
    Feed(userId: "_IUofficial", userProfileImage: "_IUofficial", date: Date(), images: ["007"], content: "하이", likes: 3, comments: 3),
    Feed(userId: "_IUofficial", userProfileImage: "_IUofficial", date: Date(), images: ["008"], content: "하이", likes: 4, comments: 4),
    Feed(userId: "_IUofficial", userProfileImage: "_IUofficial", date: Date(), images: ["001", "002", "003"], content: "하이", likes: 1, comments: 1),
    Feed(userId: "_IUofficial", userProfileImage: "_IUofficial", date: Date(), images: ["004", "005", "006"], content: "하이", likes: 2, comments: 2),
    Feed(userId: "_IUofficial", userProfileImage: "_IUofficial", date: Date(), images: ["007"], content: "하이", likes: 3, comments: 3),
    Feed(userId: "_IUofficial", userProfileImage: "_IUofficial", date: Date(), images: ["008"], content: "하이", likes: 4, comments: 4),
    Feed(userId: "_IUofficial", userProfileImage: "_IUofficial", date: Date(), images: ["009", "0010", "0011"], content: "하이", likes: 5, comments: 5),
    Feed(userId: "_IUofficial", userProfileImage: "_IUofficial", date: Date(), images: ["0012", "0013", "0014"], content: "하이", likes: 6, comments: 7),
    ]
}
