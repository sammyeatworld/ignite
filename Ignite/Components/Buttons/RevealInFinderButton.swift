//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct RevealInFinderButton: View {

    // MARK: - Properties

    private let url: URL

    // MARK: - Initializer

    init(_ location: URL) {
        self.url = location
    }
    
    // MARK: - View
    
    var body: some View {
        Button {
            NSWorkspace.shared.activateFileViewerSelecting([url])
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
