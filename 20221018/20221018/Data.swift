//
//  Data.swift
//  20221018
//
//  Created by Donghoon Bae on 2022/10/18.
//

import Foundation

struct Data {
    var page: String
    var id = UUID()
    var title: String
    var contents: String
}

struct DataList {
    
    static let dataList = [
        Data(page: "Page 1", title: "TEST", contents: "TEST"),
        Data(page: "Page 2", title: "TEST", contents: "TEST"),
        Data(page: "Page 3", title: "TEST", contents: "TEST"),
        Data(page: "Page 4", title: "TEST", contents: "TEST"),
        Data(page: "Page 5", title: "TEST", contents: "TEST"),
        Data(page: "Page 6", title: "TEST", contents: "TEST"),
        Data(page: "Page 7", title: "TEST", contents: "TEST"),
        Data(page: "Page 8", title: "TEST", contents: "TEST"),
        Data(page: "Page 9", title: "TEST", contents: "TEST"),
        Data(page: "Page 10", title: "TEST", contents: "TEST"),
        Data(page: "Page 11", title: "TEST", contents: "TEST"),
        Data(page: "Page 12", title: "TEST", contents: "TEST"),
        Data(page: "Page 13", title: "TEST", contents: "TEST"),
        Data(page: "Page 14", title: "TEST", contents: "TEST"),
        Data(page: "Page 15", title: "TEST", contents: "TEST"),
        Data(page: "Page 16", title: "TEST", contents: "TEST"),
        Data(page: "Page 17", title: "TEST", contents: "TEST"),
        Data(page: "Page 18", title: "TEST", contents: "TEST"),
        Data(page: "Page 19", title: "TEST", contents: "TEST"),
        Data(page: "Page 20", title: "TEST", contents: "TEST"),
    ]
        
}
