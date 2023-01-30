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
