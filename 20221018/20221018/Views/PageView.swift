//
//  Page1View.swift
//  20221018
//
//  Created by Donghoon Bae on 2022/10/18.
//

import SwiftUI

struct PageView: View {
    
    @State private var datas: [Data] = DataList.dataList
    
    var body: some View {
        
        VStack {
            Text($datas.title)
                .multilineTextAlignment(.leading)
            Spacer()
            NavigationLink(destination: Page2(data: datas))
            {
                Text("\($datas.title)")
            }
            .buttonStyle(.bordered)
        }
        .padding()
    }
}

struct Page1View_Previews: PreviewProvider {
    static var previews: some View {
        PageView()
    }
}
