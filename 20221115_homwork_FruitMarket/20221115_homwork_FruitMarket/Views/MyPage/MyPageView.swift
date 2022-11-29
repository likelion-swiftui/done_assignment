//
//  MyPageView.swift
//  20221115_homwork_FruitMarket
//
//  Created by Donghoon Bae on 2022/11/29.
//

import SwiftUI

struct MyPageView: View {
    
    @State var isFavoriteOn: Bool = true
    @State var heigth: Int = 0
    var body: some View {
        VStack {
            VStack {
                Image(systemName: "person.circle.fill")
                    .font(.largeTitle)
                Text("닉네임")
                    .foregroundColor(.gray)
            }.frame(height: 150)
            
            Form {
                Section("주문 정보") {
                    NavigationLink {
                        EmptyView()
                    } label: {
                        Text("주문 목록")
                    }
                }
                Section("앱 설정") {
                    Toggle("즐겨찾는 상품 표시", isOn: $isFavoriteOn)
                    VStack(alignment: .leading) {
                        Text("상품 이미지 높이 조절")
                        
                        Picker("", selection: $heigth) {
                            Text("140")
                            Text("150")
                            Text("160")
                        }
                        .pickerStyle(SegmentedPickerStyle())
                    }
                    .frame(height: 72)
                    
                }
            }
            
        }
        .navigationTitle("마이 페이지")
    }
}

struct MyPageView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            MyPageView()
        }
    }
}
