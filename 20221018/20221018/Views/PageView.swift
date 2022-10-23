//
//  Page1View.swift
//  20221018
//
//  Created by Donghoon Bae on 2022/10/18.
//

import SwiftUI

struct PageView: View {
    
    var body: some View {
        
        VStack {
            Text("Start Page")
                .font(.title)
            Spacer()
            
            NavigationLink(destination: Page1View())
            {
                PageButton(pageNum: "Start")
            }
            .buttonStyle(.bordered)
        }
        .padding()
    }
    
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView()
    }
}
