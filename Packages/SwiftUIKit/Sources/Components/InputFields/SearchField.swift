//
//  SearchField.swift
//  Ignite
//
//  Created by Samuel Majtan on 06/10/2025.
//

import SwiftUI
import AppKit

public struct SearchField: NSViewRepresentable {

    // MARK: - Properties

    @Binding
    var searchQuery: String

    // MARK: - Coordinator

    public class Coordinator: NSObject, NSSearchFieldDelegate {

        var parent: SearchField

        public init(parent: SearchField) {
            self.parent = parent
        }

        public func controlTextDidChange(_ obj: Notification) {
            if let searchField = obj.object as? NSSearchField {
                parent.searchQuery = searchField.stringValue
            }
        }
    }

    // MARK: - Methods

    public func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }

    public func makeNSView(context: Context) -> NSSearchField {
        let searchField = NSSearchField()
        searchField.delegate = context.coordinator
        return searchField
    }

    public func updateNSView(_ nsView: NSSearchField, context: Context) {
        nsView.stringValue = searchQuery
    }

}
