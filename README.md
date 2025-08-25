# Day Journal

A simple practice journaling app built with SwiftUI and SwiftData for iOS.

## Features

- ✍️ Create and edit journal entries with titles and detailed text
- ⭐ Rate your day with a 1-5 star rating system
- 📅 Track entries by date with built-in date picker
- 📱 Clean, native iOS interface using SwiftUI
- 💾 Persistent data storage with SwiftData
- 🔄 Full CRUD operations (Create, Read, Update, Delete)

## Architecture

### Technologies
- **SwiftUI**: Modern declarative UI framework
- **SwiftData**: Apple's latest data persistence framework
- **iOS**: Native iOS application

### Project Structure
```
Day Journal/
├── Day_JournalApp.swift           # App entry point & SwiftData setup
├── JournalEntry.swift             # Core data model
└── Views/
    ├── JournalEntriesListView.swift    # Main list view
    ├── CreateJournalEntryView.swift    # New entry form
    ├── EditJournalEntryView.swift      # Edit/detail view
    ├── JournalEntryDetailView.swift    # Read-only detail view
    └── JournalEntryRowView.swift       # List row component
```

### Data Model
The `JournalEntry` model includes:
- `title`: Entry title
- `text`: Journal entry content
- `rating`: Day rating (1-5 stars)
- `date`: Entry date

## Getting Started

1. Clone the repository
2. Open `Day Journal.xcodeproj` in Xcode
3. Build and run the project (⌘+R)

## Usage

- **Create Entry**: Tap the "+" button to create a new journal entry
- **View Entry**: Tap on any entry in the list to view details
- **Edit Entry**: Tap "Edit" in the detail view to modify an entry
- **Delete Entry**: Use the "Delete" button in edit mode
- **Rate Your Day**: Use the slider to set a 1-5 star rating

## Development

This project serves as a learning playground for modern Swift development:
- SwiftData for data persistence
- SwiftUI navigation patterns
- Form handling and user input
- State management
- Environment values and dependency injection

## Requirements

- iOS 17.0+
- Xcode 15.0+
- Swift 5.9+
