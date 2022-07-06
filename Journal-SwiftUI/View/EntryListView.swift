//
//  ContentView.swift
//  Journal-SwiftUI
//
//  Created by new on 7/5/22.


import SwiftUI

struct EntryListView: View {
    var body: some View {
       
        List {
            ForEach(Entry.sampleData) { entry in
                NavigationLink {
                    EmptyView()
                } label: {
                    Text(entry.title)
                }

            }
        }
        .navigationBarTitle("Journal Entry")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EntryListView()
    }
}
