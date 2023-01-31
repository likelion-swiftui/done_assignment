//
//  SquareFeed.swift
//  Bestagram
//
//  Created by Donghoon Bae on 2023/01/31.
//

import SwiftUI

extension UIScreen {
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}

struct SquareFeed: View {
    
    var imageName: String
    
    var body: some View {
        Image("\(imageName)")
            .resizable()
            .scaledToFit()
            .aspectRatio(contentMode: .fit)
            .frame(width: UIScreen.screenWidth * 1 / 3, height: UIScreen.screenWidth * 1 / 3)
    }
}

struct SquareFeed_Previews: PreviewProvider {
    static var previews: some View {
        SquareFeed(imageName: "_IUofficial")
    }
}
