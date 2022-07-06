//
//  ContentView.swift
//  Journal-SwiftUI
//
//  Created by new on 7/5/22.


import SwiftUI

struct EntryListView: View {
    
//    var entries = [
//        Entry(title: "1", note: "123")
//    ]
    var body: some View {
        NavigationView {
            List {
                //section group sections
                Section("My entries") {
                    
                    ForEach(Entry.sampleData) { entry in
                        NavigationLink {
                            DetailView(entry: entry)
                        } label: {
                            VStack(alignment: .leading, spacing: 8){
                                Text(entry.title)
                                    .bold()
                                    .font(.headline)
                                Text(entry.note)
                                    .font(.system(size: 14))
                            }.padding()
                        }
                    }
                }
            }.listStyle(.plain)
            .navigationTitle("Dream Journal")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                        DetailView()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EntryListView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
            .previewDisplayName("iPhone 12")
        
        
    }
}

