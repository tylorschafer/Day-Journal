//
//  ContentView.swift
//  Day Journal
//
//  Created by Tylor Schafer on 10/3/24.
//

import SwiftUI
import SwiftData

struct JournalEntriesListView: View {
    @Query(sort: \JournalEntry.date) private var journalEntries: [JournalEntry]
    @Environment(\.modelContext) private var modelContext
    @State private var showCreateView: Bool = false

    var body: some View {
        NavigationStack {
            List(journalEntries) { entry in
                NavigationLink(destination: EditJournalEntryView(entry: entry)) {
                    JournalEntryRowView(entry: entry)
                }
            }
            .navigationTitle("\(journalEntryCount) Journal Entries")
            .toolbar {
                Button {
                    showCreateView = true
                } label: {
                    Label("Add Item", systemImage: "plus")
                }
            }
        }
        .sheet(isPresented: $showCreateView) {
            CreateJournalEntryView()
        }
    }
    
    var journalEntryCount: Int {
        journalEntries.count
    }
}

#Preview {
    JournalEntriesListView()
        .modelContainer(for: JournalEntry.self, inMemory: true)
}
