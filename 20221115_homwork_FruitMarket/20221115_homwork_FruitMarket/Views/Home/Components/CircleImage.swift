//
//  CircleImage.swift
//  20221115_homwork_FruitMarket
//
//  Created by Donghoon Bae on 2022/11/29.
//

import SwiftUI

struct CircleImage: View {
    
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("apple"))
    }
}
