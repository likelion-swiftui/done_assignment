//
//  FavoritesScrollView.swift
//  20221115_homwork_FruitMarket
//
//  Created by Donghoon Bae on 2022/11/29.
//

import SwiftUI

struct FavoritesScrollView: View {
    
    @ObservedObject var modelData: ModelData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                ForEach(modelData.fruits, id: \.self) { fruits in
                    CircleImage(image: fruits.fImage)
                        
                }
            }
        }
    }
}

struct FavoritesScrollView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesScrollView(modelData: ModelData())
    }
}
