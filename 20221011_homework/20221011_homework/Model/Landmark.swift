//
//  Landmarks.swift
//  20221011_homework
//
//  Created by Donghoon Bae on 2022/10/25.
//

import Foundation

struct Landmark: Identifiable, Codable {
    var id: Int
    var name: String
    var category: String
    var city: String
    var state: String
    var isFavorite: Bool
    var park: String
    var description: String
    var imageName: String
    
}
