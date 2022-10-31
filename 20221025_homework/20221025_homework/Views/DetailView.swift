//
//  DetailView.swift
//  20221025_homework
//
//  Created by Donghoon Bae on 2022/10/31.
//

import SwiftUI

struct DetailView: View {
    var evtData: EventData
    
    var body: some View {
        List {
            HStack {
                Image(systemName: evtData.symbol)
                Text("\(evtData.title)")
                    .bold()
                    .font(.title3)
            }
            .padding()
            
            Text(evtData.evtDate)
            
            Text("Tasks")
                .bold()
                .font(.title3)
            
            ForEach($evtData.taskList, id: \.id) { task in
                HStack {
                    Button {
                        task.isComplete ? task.isComplete = false : task.isComplete = true
                    } label: {
                        Image(systemName: task.isComplete ? "circlebadge.fill" : "circlebadge")
                    }
                    .buttonStyle(.plain)
                    Text("\(task.taskName)")
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(evtData: EventList.eventList.first!)
    }
}
