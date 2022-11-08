//
//  AboutView.swift
//  20221108_AboutMe
//
//  Created by Donghoon Bae on 2022/11/08.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            Text("All About")
                .bold()
                .font(.largeTitle)
            Image("iam")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 400, height: 500)
            Text("done")
                .font(.title)
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
