//
//  CardView.swift
//  20221025_homework
//
//  Created by Donghoon Bae on 2022/10/31.
//

import SwiftUI

struct CardView: View {
    
    var evtData: EventData
    
    var body: some View {
        HStack {
            Image(systemName: evtData.symbol)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                
            VStack(alignment: .leading) {
                Text("\(evtData.title)")
                    .bold()
                    .font(.body)
                Text("\(evtData.evtDate)")
                    .foregroundColor(.gray)
                    .font(.caption2)
            }
            Spacer()
            Text("\(evtData.taskList.count)")
                .foregroundColor(.gray)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(evtData: EventList.eventList.first!)
    }
}
