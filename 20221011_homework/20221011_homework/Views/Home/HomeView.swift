//
//  HomeView.swift
//  20221011_homework
//
//  Created by Donghoon Bae on 2022/11/15.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var dataList: DataList
    
    var body: some View {
        ScrollView {
            Image(dataList.features[0].imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .clipped()
                .listRowInsets(EdgeInsets())
            
            ForEach(dataList.categories.keys.sorted(), id: \.self) { key in
                CategoryRow(categoryName: key, items: dataList.categories[key]!)
            }
            .listRowInsets(EdgeInsets())
        }
        .navigationTitle("Featured")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(DataList())
    }
}
