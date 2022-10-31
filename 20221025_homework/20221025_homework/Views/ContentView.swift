//
//  ContentView.swift
//  20221025_homework
//
//  Created by Donghoon Bae on 2022/10/31.
//

import SwiftUI

struct ContentView: View {
    
    @State private var evtList: [EventData] = EventList.eventList
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section(header: Text("Next 7 Days")) {
                        ForEach(evtList, id: \.id) { item in
                            NavigationLink(destination: DetailView(evtData: item)) {
                                CardView(evtData: item)
                            }
                        }
                    }
                    Section(header: Text("Next 30 Days")) {
                        
                    }
                    Section(header: Text("Future")) {
                        
                    }
                    Section(header: Text("Past")) {
                        
                    }
                }
                .listStyle(.sidebar)
            }
            .padding()
            .navigationTitle("Data Planner")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
