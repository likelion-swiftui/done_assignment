//
//  FunFactsView.swift
//  20221108_AboutMe
//
//  Created by Donghoon Bae on 2022/11/08.
//

import SwiftUI

struct FunFactsView: View {
    
    @State private var facts: String = "Click Button"
    @State private var factList: [String] = [
    "프로토타입 어렵다",
    "프로토타입이 이런건가...",
    "후... 쉽지않다",
    ]
    
    var body: some View {
        VStack {
            Spacer()
            Text("Fun Facts")
                .font(.largeTitle)
            Spacer()
            Text("\(facts)")
                .font(.title2)
            Spacer()
            Button {
                facts = factList.shuffled()[0]
            } label: {
                Text("Show Random Fun Facts")
            }
            Spacer()
        }
    }
}

struct FunFactsView_Previews: PreviewProvider {
    static var previews: some View {
        FunFactsView()
    }
}
