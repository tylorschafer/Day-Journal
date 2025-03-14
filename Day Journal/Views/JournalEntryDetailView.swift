//
//  JournalEntryDetailView.swift
//  Day Journal
//
//  Created by Tylor Schafer on 1/31/25.
//

import SwiftUI

struct RatingView: View {
    let rating: Double
    
    var body: some View {
        Text(String(repeating: "⭐️", count: Int(rating)))
    }
}

struct JournalEntryDetailView: View {
    let entry: JournalEntry
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    Text(entry.date, style: .date)
                        .font(.subheadline)
                        .bold()
                        .padding(.vertical, 8)
                    RatingView(rating: entry.rating)
                        .padding(.bottom, 8)
                    Spacer()
                }
                Text(entry.text)
            }
            .navigationTitle(entry.title)
        }
    }
}

#Preview {
    let entry = JournalEntry(title: "First Journal Entry", text: "I'm finally writing in a journal", rating: 5, date: Date.now)

    return JournalEntryDetailView(entry: entry)
}
