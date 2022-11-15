//
//  LandmarkView.swift
//  20221011_homework
//
//  Created by Donghoon Bae on 2022/10/18.
//

import SwiftUI

struct LandmarkView: View {
    
    @EnvironmentObject var dataList: DataList
    var landmark: Landmark
    
    var landmarkIndex: Int {
        dataList.landmarkData.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        ScrollView {
            Image("bak")
                .ignoresSafeArea(edges: .top)
                .frame(height: 10)
            
            CircleImage(image: Image(landmark.imageName).resizable())
                .frame(width: 250)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isFavorite: $dataList.landmarkData[landmarkIndex].isFavorite)
                }
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
            
            Spacer()
        }
    }
}

struct LandmarksView_Previews: PreviewProvider {
    static let dataList = DataList()
    
    static var previews: some View {
        LandmarkView(landmark: DataList().landmarkData[0])
            .environmentObject(dataList)
    }
}
