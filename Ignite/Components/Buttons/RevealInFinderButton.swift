//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct RevealInFinderButton: View {

    // MARK: - Properties

    private let itemURL: URL

    // MARK: - Initializer

    init(_ itemURL: URL) {
        self.itemURL = itemURL
    }

    // MARK: - View

    var body: some View {
        Button {
            NSWorkspace.shared.activateFileViewerSelecting([itemURL])
        } label: {
            Image(systemName: SF.finder.rawValue)
                .foregroundStyle(.blue)
        }
        .buttonStyle(.plain)
    }

}

// MARK: - Preview

#Preview {
    RevealInFinderButton(.homeDirectory)
}
