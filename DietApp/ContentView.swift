//
//  ContentView.swift
//  DietApp
//
//  Created by Wesley Patterson on 5/7/22.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var protein = ""
    @State private var time = ""
    // Figure out a time Picker
    
    var collections = [
        Boi(name: "Kodiak", protein: 12, time: 10)
    ]
    
    var body: some View {
                
        VStack {
            TextField(
                    "Enter name",
                    text: $name
                )
            TextField(
                    "Enter amount of protein",
                    text: $protein
                )
            TextField(
                    "Enter time",
                    text: $time
                )
            List(collections, id: \.name) { index in
                    
                LabelRow(collection: index)
                    
            }
            Spacer()
        }
            
    }
    
    
    struct Boi {
        let name: String
        let protein: Int
        let time: Int
    }
    
    struct LabelRow: View {
        var collection: Boi
        var body: some View {
                HStack {
                    Text("\(collection.name)")
                    Spacer()
                    Text("Protein: \(collection.protein) g")
                    Text("Time: \(collection.time)")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/*
 
 protein counter
 
 */
