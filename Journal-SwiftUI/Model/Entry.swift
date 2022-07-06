//
//  Entry.swift
//  Journal-SwiftUI
//
//  Created by new on 7/5/22.
//

import Foundation

struct Entry: Identifiable {
    
    var id: UUID = UUID()
    var title: String
    var note: String
    var date = Date()
    
    static let sampleData: [Entry] = [
        Entry(title: "To-Do", note: "Study"),
        Entry(title: "Reminder", note: "Take out trash"),
        Entry(title: "Cook", note: "Dinner"),
        Entry(title: "wash", note: "cloth")
    ]
}
