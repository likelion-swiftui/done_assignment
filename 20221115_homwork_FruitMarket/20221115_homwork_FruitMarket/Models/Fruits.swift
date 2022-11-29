//
//  Fruits.swift
//  20221115_homwork_FruitMarket
//
//  Created by Donghoon Bae on 2022/11/29.
//

import Foundation
import SwiftUI

struct Fruits: Codable, Hashable {
//    var id: UUID = UUID()
    var name: String
    var price: Int
    var description: String
    var isFavorite: Bool
    
    var imageName: String
    var fImage: Image {
        get {
            return Image(imageName)
        }
    }
}

