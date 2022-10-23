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
    var contents: String = "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."
    var next1: String
    var next2: String
    var next3: String
}

struct DataList {
    
    static let dataList = [
        Data(page: "Page 01", title: "TEST", next1: "Page2View()", next2: "Page10Veiw()", next3: "Page15Veiw()"),
        Data(page: "Page 02", title: "TEST", next1: "Page2View()", next2: "Page10Veiw()", next3: "Page15Veiw()"),
        Data(page: "Page 03", title: "TEST", next1: "Page2View()", next2: "Page10Veiw()", next3: "Page15Veiw()"),
        Data(page: "Page 04", title: "TEST", next1: "Page2View()", next2: "Page10Veiw()", next3: "Page15Veiw()"),
        Data(page: "Page 05", title: "TEST", next1: "Page2View()", next2: "Page10Veiw()", next3: "Page15Veiw()"),
        Data(page: "Page 06", title: "TEST", next1: "Page2View()", next2: "Page10Veiw()", next3: "Page15Veiw()"),
        Data(page: "Page 07", title: "TEST", next1: "Page2View()", next2: "Page10Veiw()", next3: "Page15Veiw()"),
        Data(page: "Page 08", title: "TEST", next1: "Page2View()", next2: "Page10Veiw()", next3: "Page15Veiw()"),
        Data(page: "Page 09", title: "TEST", next1: "Page2View()", next2: "Page10Veiw()", next3: "Page15Veiw()"),
        Data(page: "Page 10", title: "TEST", next1: "Page2View()", next2: "Page10Veiw()", next3: "Page15Veiw()"),
        Data(page: "Page 11", title: "TEST", next1: "Page2View()", next2: "Page10Veiw()", next3: "Page15Veiw()"),
        Data(page: "Page 12", title: "TEST", next1: "Page2View()", next2: "Page10Veiw()", next3: "Page15Veiw()"),
        Data(page: "Page 13", title: "TEST", next1: "Page2View()", next2: "Page10Veiw()", next3: "Page15Veiw()"),
        Data(page: "Page 14", title: "TEST", next1: "Page2View()", next2: "Page10Veiw()", next3: "Page15Veiw()"),
        Data(page: "Page 15", title: "TEST", next1: "Page2View()", next2: "Page10Veiw()", next3: "Page15Veiw()"),
        Data(page: "Page 16", title: "TEST", next1: "Page2View()", next2: "Page10Veiw()", next3: "Page15Veiw()"),
        Data(page: "Page 17", title: "TEST", next1: "Page2View()", next2: "Page10Veiw()", next3: "Page15Veiw()"),
        Data(page: "Page 18", title: "TEST", next1: "Page2View()", next2: "Page10Veiw()", next3: "Page15Veiw()"),
        Data(page: "Page 19", title: "TEST", next1: "Page2View()", next2: "Page10Veiw()", next3: "Page15Veiw()"),
        Data(page: "Page 20", title: "TEST", next1: "Page2View()", next2: "Page10Veiw()", next3: "Page15Veiw()"),
    ]
        
}
