//
//  FruitMarkTabView.swift
//  20221115_homwork_FruitMarket
//
//  Created by Donghoon Bae on 2022/11/29.
//

import SwiftUI

struct FruitMarkTabView: View {
    @ObservedObject var modelData: ModelData = ModelData()
    
    var body: some View {
        TabView {
            NavigationStack {
                HomeView(modelData: modelData)
            }.tabItem {
                Label("홈", systemImage: "house")
            }
            
            NavigationStack {
                EmptyView()
            }.tabItem {
                Label("레시피", systemImage: "book")
            }
            
            NavigationStack {
                MyPageView()
            }.tabItem {
                Label("마이페이지", systemImage: "person")
            }
            
        }
    }
}

struct FruitMarkTabView_Previews: PreviewProvider {
    static var previews: some View {
        FruitMarkTabView()
    }
}
