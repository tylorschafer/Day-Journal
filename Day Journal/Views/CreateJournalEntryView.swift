//
//  CreateJournalEntryView.swift
//  Day Journal
//
//  Created by Tylor Schafer on 3/12/25.
//

import SwiftUI
struct CreateJournalEntryView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss
    @State private var title: String = ""
    @State private var text: String = "Today was..."
    @State private var rating: Double = 4
    @State private var date: Date = Date()
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Title", text: $title)
                DatePicker("Journal Date", selection: $date, displayedComponents: .date)
                RatingView(rating: rating)
                Slider(value: $rating, in: 1...5, step: 1)
                TextEditor(text: $text)
            }
            .navigationTitle("New Journal Entry")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Save") {
                        let newJournalEntry = JournalEntry(
                            title: title,
                            text: text,
                            rating: rating,
                            date: date
                        )
                        modelContext.insert(newJournalEntry)
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        CreateJournalEntryView()
    }
}
