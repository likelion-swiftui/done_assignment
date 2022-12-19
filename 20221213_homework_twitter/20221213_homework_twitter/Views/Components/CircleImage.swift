//
//  CircleImage.swift
//  20221213_homework_twitter
//
//  Created by Donghoon Bae on 2022/12/19.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 0.1)
            }
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("applepark2"))
    }
}
