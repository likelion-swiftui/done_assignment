//
//  ContentView.swift
//  20221011_homework
//
//  Created by Donghoon Bae on 2022/10/18.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
           VStack {
               Image("applepark3")
                   .ignoresSafeArea(edges: .top)
                   .frame(height: 10)

               CircleImage(image: Image("applepark2").resizable())
                   .offset(y: 100)
                   .padding()
                   .frame(width: 250)
               

               VStack(alignment: .leading) {
                   Text("Apple Park")
                       .font(.title)

                   HStack {
                       Text("One Apple Park, Cupertino")
                       Spacer()
                       Text("California")
                   }
                   .font(.subheadline)
                   .foregroundColor(.secondary)

                   Divider()

                   Text("About Apple Park")
                       .font(.title2)
                   Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).")
               }
               .padding()
               
               Spacer()
           }
       }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
