//
//  CreateJournalEntryView.swift
//  Day Journal
//
//  Created by Tylor Schafer on 3/12/25.
//

import SwiftUI
struct CreateJournalEntryView: View {
    @State private var title: String = ""
    @State private var text: String = "Today was..."
    @State private var rating: Double = 4
    @State private var date: Date = Date()
    
    var body: some View {
        Form {
            TextField("Title", text: $title)
            DatePicker("Journal Date", selection: $date, displayedComponents: .date)
            RatingView(rating: rating)
            Slider(value: $rating, in: 1...5, step: 1)
            TextEditor(text: $text)
        }
    }
}

#Preview {
    CreateJournalEntryView()
}
