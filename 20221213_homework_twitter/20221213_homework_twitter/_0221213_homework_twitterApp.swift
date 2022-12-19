//
//  _0221213_homework_twitterApp.swift
//  20221213_homework_twitter
//
//  Created by Donghoon Bae on 2022/12/19.
//

import SwiftUI

@main
struct _0221213_homework_twitterApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ContentView()
                    .environmentObject(FeedStore())
            }
        }
    }
}
