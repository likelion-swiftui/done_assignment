//
//  FruitsRow.swift
//  20221115_homwork_FruitMarket
//
//  Created by Donghoon Bae on 2022/11/29.
//

import SwiftUI

struct FruitsRow: View {
    
    var fruits: Fruits
    
    var body: some View {
        HStack {
            fruits.fImage
                .resizable()
            
            VStack(alignment: .leading) {
                Text("\(fruits.name)")
                    .font(.headline)
                    .foregroundColor(.black)
                    .padding()
                Text("\(fruits.description)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding()
                    .lineLimit(2)
                
                HStack {
                    Text("₩\(fruits.price)")
                        .font(.headline)
                        .bold()
                    Spacer()
                    Image(systemName: "heart.fill")
                        .foregroundColor(.pink)
                    Image(systemName: "cart")
                        .foregroundColor(.pink)
                }
                .padding()
            }
        }
        .frame(width: 320, height: 150)
    }
}

struct FruitsRow_Previews: PreviewProvider {
    static var previews: some View {
        FruitsRow(fruits: ModelData().fruits.first!)
    }
}
