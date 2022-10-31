//
//  EventData.swift
//  20221025_homework
//
//  Created by Donghoon Bae on 2022/10/31.
//

import Foundation

struct EventData: Identifiable {
    var id = UUID()
    var isDone: Bool
    var title: String
    var evtDate: String
    var symbol: String
    var taskList = [TaskData(isComplete: false, taskName: "")]
    
}

struct TaskData: Identifiable, Hashable {
    var id = UUID()
    var isComplete: Bool = false
    var taskName: String
}

struct EventList {
    
    static var eventList = [
        EventData(isDone: false, title: "TEST", evtDate: "2022-05-10", symbol: "gamecontroller.fill", taskList: [TaskData(isComplete: false, taskName: "TEST2")]),
    ]
    
}
