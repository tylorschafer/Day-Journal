//
//  JournalEntryRowView.swift
//  Day Journal
//
//  Created by Tylor Schafer on 1/31/25.
//

import SwiftUI

struct JournalEntryRowView: View {
    let entry: JournalEntry
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(entry.title)
                .font(.title3)
            HStack {
                Text(String(repeating: "⭐️", count: entry.rating))
                    .padding(.bottom, 8)
                Text(entry.date, style: .date)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    .padding(.vertical, 8)
            }
        }
    }
}

#Preview {
    let entry = JournalEntry(title: "First Journal Entry", text: "I'm finally writing in a journal", rating: 5, date: Date.now)

    return List {
        JournalEntryRowView(entry: entry)
    }
}
