//
//  FavoriteView.swift
//  20221108_AboutMe
//
//  Created by Donghoon Bae on 2022/11/08.
//

import SwiftUI

struct FavoriteView: View {
    
    @State private var isOpend: Bool = false
    var body: some View {
        VStack {
            Text("Favorites")
                .bold()
                .font(.largeTitle)
            
            List {
                Section(header: Text("Hobbies").foregroundColor(.black)) {
                    Text("🎮 💻 🏃🏻")
                        .font(.largeTitle)
                }
                Section(header: Text("Foods").foregroundColor(.black)) {
                    Text("☕️ 🍔 🍕 🍎")
                        .font(.largeTitle)
                }
                DisclosureGroup("Guess my favorite colors", isExpanded: $isOpend) {
                    HStack {
                        ColorView(colorBox: .gray)
                        ColorView(colorBox: .white)
                        ColorView(colorBox: .indigo)
                        
                    }
                }
            }
            .listStyle(.plain)
        }
    }
}

struct ColorView: View {
    
    @State var colorBox: Color
    
    var body: some View {
        Rectangle()
            .foregroundColor(colorBox)
            .shadow(color: .gray, radius: 10)
            .cornerRadius(10)
            .frame(width: 50, height: 50)
            .padding(3)
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
