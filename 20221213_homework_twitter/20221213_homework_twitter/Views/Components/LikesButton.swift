//
//  LikesButton.swift
//  20221213_homework_twitter
//
//  Created by Donghoon Bae on 2022/12/19.
//

import SwiftUI

struct LikesButton: View {
    @Binding var likes: Int
    @Binding var isLike: Bool
    
    var body: some View {
        
        Image(systemName: isLike ? "heart.fill" : "heart")
            .onTapGesture {
                if !isLike {
                    likes += 1
                } else {
                    likes -= 1
                }
                isLike.toggle()
            }
    }
}

struct LikesButton_Previews: PreviewProvider {
    static var previews: some View {
        LikesButton(likes: .constant(1), isLike: .constant(false))
    }
}
