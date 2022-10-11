//
//  Data.swift
//  20221011
//
//  Created by Donghoon Bae on 2022/10/11.
//

import Foundation

struct Data: Identifiable {
    var id = UUID()
    var time: String
    var weather: String
    var degree: String
}

struct DataList {
    static var dataList = [
        Data(time: "8AM", weather: "sun.max.fill", degree: "63°"),
        Data(time: "9AM", weather: "cloud.sun.fill", degree: "63°"),
        Data(time: "10AM", weather: "sun.max.fill", degree: "63°"),
        Data(time: "11AM", weather: "cloud.fill", degree: "63°"),
        Data(time: "12AM", weather: "cloud.sun.fill", degree: "63°"),
    ]
}
