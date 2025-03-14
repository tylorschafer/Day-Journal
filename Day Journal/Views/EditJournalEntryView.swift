//
//  EditJournalView.swift
//  Day Journal
//
//  Created by Tylor Schafer on 3/13/25.
//

import SwiftUI

struct EditJournalEntryView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss
    @State var entry: JournalEntry
    @State var isInEditMode: Bool = false

    var body: some View {
        if isInEditMode {
            Form {
                TextField("Title", text: $entry.title)
                DatePicker("Journal Date", selection: $entry.date, displayedComponents: .date)
                RatingView(rating: entry.rating)
                Slider(value: $entry.rating, in: 1...5, step: 1)
                TextEditor(text: $entry.text)
            }
                .navigationTitle("Edit Journal Entry")
                .toolbar {
                    Button("Delete") {
                        modelContext.delete(entry)
                        dismiss()
                    }
                        .bold()
                        .foregroundStyle(.red)
                    Button("Done") {
                        isInEditMode = false
                    }
                        .bold()
                }
        } else {
            JournalEntryDetailView(entry: entry)
                .toolbar {
                    Button("Edit") {
                        isInEditMode = true
                    }
                }
        }
    }
}

#Preview {
    NavigationStack {
        EditJournalEntryView(
            entry: JournalEntry(
                title: "First Journal Entry",
                text: "I'm finally writing in a journal",
                rating: 5,
                date: Date.now
            )
        )
    }
}
