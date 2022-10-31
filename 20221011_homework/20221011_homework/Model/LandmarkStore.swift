//
//  LandmarksStore.swift
//  20221011_homework
//
//  Created by Donghoon Bae on 2022/10/25.
//

import Foundation

class LandmarkStore: ObservableObject  {
    @Published var landmark: [Landmark]
    
    init (landmark: [Landmark] = []) {
        self.landmark = landmark
    }
}
