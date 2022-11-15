//
//  CategoryRow.swift
//  20221011_homework
//
//  Created by Donghoon Bae on 2022/11/15.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .center) {
                    ForEach(items) { landmark in
                        NavigationLink {
                            LandmarkView(landmark: landmark)
                        } label: {
                            CategoryItem(landmark: landmark)
                        }
                    }
                }
            }
            .frame(height: 200)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var landmarkData = DataList().landmarkData
    
    static var previews: some View {
        CategoryRow(categoryName: landmarkData[0].category.rawValue, items: Array(landmarkData.prefix(4)))
    }
}
