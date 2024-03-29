//
//  MainView.swift
//  20221011_homework
//
//  Created by Donghoon Bae on 2022/10/25.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var dataList: DataList
    @State private var isFavoriteOnly: Bool = false
    
    var favoriteLandmark: [Landmark] {
        dataList.landmarkData.filter { landmark in
            (!isFavoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
            VStack {
                List {
                    Toggle(isOn: $isFavoriteOnly) { Text("Favorite Only") }
                    ForEach(favoriteLandmark) { landmark in
                        NavigationLink(destination: LandmarkView(landmark: landmark)) {
                            ListCell(landmark: landmark)
                        }
                    }
                }
            }
            .navigationTitle("Landmarks")
    }
}

struct ListCell: View {
    
    var landmark: Landmark
    
    var body: some View {
        HStack {
            Image(landmark.imageName)
                .resizable()
                .cornerRadius(10.0)
                .frame(width: 50, height: 40)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite == true {
                Image(systemName: "star.fill")
                    .renderingMode(.original)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(DataList())
    }
}
