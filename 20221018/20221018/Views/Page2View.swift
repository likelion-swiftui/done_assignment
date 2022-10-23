//
//  Page2View.swift
//  20221018
//
//  Created by Donghoon Bae on 2022/10/23.
//

import SwiftUI

struct Page2View: View {
    var body: some View {
        
        VStack {
            Text("Page2")
                .font(.title)
            Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose.\n")
                .multilineTextAlignment(.leading)
                .font(.caption)
            Text("There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.")
                .multilineTextAlignment(.leading)
                .font(.caption)
            Spacer()
            VStack {
                NavigationLink(destination: PageView())
                {
                    PageButton(pageNum: "Page1")
                }
                .buttonStyle(.bordered)
                NavigationLink(destination: Page3View())
                {
                    PageButton(pageNum: "Page3")
                }
                .buttonStyle(.bordered)
                NavigationLink(destination: Page4View())
                {
                    PageButton(pageNum: "Page5")
                }
                .buttonStyle(.bordered)
            }
            
        }
        
        .padding()
    }
}

struct Page2View_Previews: PreviewProvider {
    static var previews: some View {
        Page2View()
    }
}
