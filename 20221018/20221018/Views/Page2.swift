//
//  Page2.swift
//  20221018
//
//  Created by Donghoon Bae on 2022/10/18.
//

import SwiftUI

struct Page2: View {
    
    @State private var datas: [Data] = DataList.dataList
    
    var body: some View {
        
        VStack {
            Text($datas.title)
                .multilineTextAlignment(.leading)
            Spacer()
            NavigationLink(destination: PageView(datas: datas))
            {
                Text("\($datas.title)")
            }
            .buttonStyle(.bordered)
        }
        .padding()
    }
}

struct Page2_Previews: PreviewProvider {
    static var previews: some View {
        Page2()
    }
}
