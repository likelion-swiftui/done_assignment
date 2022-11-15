//
//  LandmarksDataIn.swift
//  20221011_homework
//
//  Created by Donghoon Bae on 2022/10/25.
//

import Foundation
import Combine

final class DataList: ObservableObject {
    @Published var landmarkData: [Landmark] = loadJson("landmarkData.json")
    
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarkData, by: { $0.category.rawValue }
            )
    }
    
    var features: [Landmark] {
            landmarkData.filter { $0.isFeatured }
        }

    
}

func loadJson<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename,
                        withExtension: nil)
    else {
        fatalError("\(filename) not found.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Could not load \(filename): (error)")
    }
    
    do {
        return try JSONDecoder().decode(T.self, from: data)
    } catch {
        fatalError("Unable to parse \(filename): (error)")
    }
}
