//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI
import AppKit

struct SearchField: NSViewRepresentable {

    // MARK: - Properties

    @Binding
    var searchQuery: String

    // MARK: - Coordinator

    class Coordinator: NSObject, NSSearchFieldDelegate {

        var parent: SearchField

        init(parent: SearchField) {
            self.parent = parent
        }

        func controlTextDidChange(_ obj: Notification) {
            if let searchField = obj.object as? NSSearchField {
                parent.searchQuery = searchField.stringValue
            }
        }
    }

    // MARK: - Methods

    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }

    func makeNSView(context: Context) -> NSSearchField {
        let searchField = NSSearchField()
        searchField.delegate = context.coordinator
        return searchField
    }

    func updateNSView(_ nsView: NSSearchField, context: Context) {
        nsView.stringValue = searchQuery
    }

}
