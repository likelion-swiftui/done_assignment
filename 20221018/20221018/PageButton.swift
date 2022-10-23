//
//  PageButton.swift
//  20221018
//
//  Created by Donghoon Bae on 2022/10/23.
//

import SwiftUI

struct PageButton: View {
    @State var pageNum: String
    
    var body: some View {
        Text(pageNum)
            .multilineTextAlignment(.leading)
            .frame(maxWidth: 1000, minHeight: 30)
            .buttonStyle(.bordered)
            
    }
}

struct PageButton_Previews: PreviewProvider {
    static var previews: some View {
        PageButton(pageNum: "Page2")
    }
}
