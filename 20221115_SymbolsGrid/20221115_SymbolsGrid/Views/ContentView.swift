//
//  ContentView.swift
//  20221115_SymbolsGrid
//
//  Created by Donghoon Bae on 2022/11/15.
//

import SwiftUI

struct ContentView: View {
    
    @State private var symbols: [Symbol] = PickableSymbols.pickableSymbols
    @State private var colsCount: Int = 6
    @State private var isEdit: Bool = false
    @State private var number: Int = 6
    @State private var cols = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        
        NavigationStack {
            
            VStack {
                
                if isEdit {
                    Stepper(onIncrement: incrementStep, onDecrement: decrementStep) {
                        Text("Grid : \(colsCount)")
                    }
                    .padding()
                    .cornerRadius(15)
                    .padding()
                }
                
                ScrollView {
                    LazyVGrid(columns: cols) {
                        ForEach(symbols) { symbol in
                            Image(systemName: symbol.name)
                        }
                    }
                }
            }
            .navigationTitle("My Symbols")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button {
                    isEdit.toggle()
                } label: {
                    Text("Edit")
                }
            }
        }
    }
    
    func incrementStep() {
        if colsCount == 6 {
            number += 1
        } else if colsCount > 0 {
            colsCount += 1
            cols.append(GridItem(.flexible()))
        }
    }
    
    func decrementStep() {
        if colsCount == 2 {
            number -= 1
        } else if colsCount > 1 {
            colsCount -= 1
            cols.removeLast()
        }
    }
}

//struct ImageView: View {
//
//    var symbols = Symbol
//
//    var body: some View {
//        Image(systemName: <#T##String#>)
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
