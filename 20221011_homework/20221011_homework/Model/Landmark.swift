//
//  Landmarks.swift
//  20221011_homework
//
//  Created by Donghoon Bae on 2022/10/25.
//

import Foundation
import SwiftUI

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var city: String
    var state: String
    var isFavorite: Bool
    var park: String
    var description: String
    var imageName: String
    var isFeatured: Bool
    
    var category: Category
    
    
    enum Category: String, CaseIterable, Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
    
}
