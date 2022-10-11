//
//  ForecastView.swift
//  20221011
//
//  Created by Donghoon Bae on 2022/10/11.
//

import SwiftUI

struct ForecastView: View {
    
    @State private var data: [Data] = DataList.dataList
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    VStack {
                        Text("서울")
                            .font(.title3)
                        Text("63°")
                            .font(.title2)
                    }
                    Spacer()
                    VStack {
                        Image(systemName: "sun.max.fill")
                            .renderingMode(.original)
                        Text("맑음")
                        Text("H:68° L:42°")
                    }
                }
                Divider()
                HStack {
                    ForEach(data, id: \.id) { wdata in
                        Spacer()
                        VStack {
                            Text(wdata.time)
                            Spacer()
                            Image(systemName: wdata.weather)
                                .renderingMode(.original)
                            Spacer()
                            Text(wdata.degree)
                        }
                        Spacer()
                    }
                }
            }
            .padding()
        }
        .frame(height: 200)
    }
}

struct ForecastView_Previews: PreviewProvider {
    static var previews: some View {
        ForecastView()
    }
}
