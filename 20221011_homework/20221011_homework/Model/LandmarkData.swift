//
//  LandmarksDataIn.swift
//  20221011_homework
//
//  Created by Donghoon Bae on 2022/10/25.
//

import Foundation

var landmarkData: [Landmark] = loadJson("landmarkData.json")

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
