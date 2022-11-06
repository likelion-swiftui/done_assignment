//
//  LandmarkView.swift
//  20221011_homework
//
//  Created by Donghoon Bae on 2022/10/18.
//

import SwiftUI

struct LandmarkView: View {
    
    @ObservedObject var datalist: dataList
    var landmark: Landmark
    
    var body: some View {
        VStack {
            Image("applepark3")
                .ignoresSafeArea(edges: .top)
                .frame(height: 10)
            
            CircleImage(image: Image(landmark.imageName).resizable())
                .offset(y: 100)
                .padding()
                .frame(width: 250)
            
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    
                    Button {
                        datalist.landmarkData.isFavorite.toggle()
                    } label: {
                        landmark.isFavorite ? Image(systemName: "star.fill") : Image(systemName: "star")
                    }
                    //                    Button {
                    //                        landmark.isFavorite.toggle()
                    //                    } label: {
                    //                        Label("Toggle Favorite", systemImage: landmark.isFavorite ? "star.fill" : "star")
                    //                            .labelStyle(.iconOnly)
                    //                            .foregroundColor(landmark.isFavorite ? .yellow : .gray)
                    //                    }
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
    static var previews: some View {
        LandmarkView(landmark: landmarkData[0])
    }
}
