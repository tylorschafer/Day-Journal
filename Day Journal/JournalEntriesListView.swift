//
//  ContentView.swift
//  Day Journal
//
//  Created by Tylor Schafer on 10/3/24.
//

import SwiftUI

struct JournalEntriesListView: View {
    let journalEntries: [JournalEntry] = []
    
    var body: some View {
        List(journalEntries) { entry in
            Text(entry.title)
        }
    }
}

#Preview {
    JournalEntriesListView()
}
