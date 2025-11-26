//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct RevealInFinderButton: View {

    // MARK: - Properties

    private let locationURL: URL

    // MARK: - Initializer

    init(_ locationURL: URL) {
        self.locationURL = locationURL
    }

    // MARK: - View

    var body: some View {
        Button {
            NSWorkspace.shared.activateFileViewerSelecting([locationURL])
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
