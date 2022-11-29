//
//  HomeView.swift
//  20221115_homwork_FruitMarket
//
//  Created by Donghoon Bae on 2022/11/29.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var modelData: ModelData
    
    var body: some View {
        VStack {
            DisclosureGroup("즐겨찾는 상품") {
                FavoritesScrollView(modelData: modelData)
                    .frame(height: 120)
            }.foregroundColor(.black)
                .padding()
            
            List {
                ForEach(modelData.fruits, id: \.self) { fruit in
                    NavigationLink {
                        EmptyView()
                    } label: {
                        FruitsRow(fruits: fruit)
                    }
                }
                .listRowBackground(Color.white)
            }
//            .background(Color.gray)
//            .listStyle(PlainListStyle())
        }
        .navigationTitle("과일마트")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            HomeView(modelData: ModelData())
        }
    }
}
