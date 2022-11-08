//
//  StoryView.swift
//  20221108_AboutMe
//
//  Created by Donghoon Bae on 2022/11/08.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        List {
            CardView()
        }
    }
}

struct CardView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Your Stroy")
                .font(.largeTitle)
                .bold()
            Text("Your Name")
                .font(.headline)
                .foregroundColor(.gray)
            Text("12312312312312312312312312312")
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
