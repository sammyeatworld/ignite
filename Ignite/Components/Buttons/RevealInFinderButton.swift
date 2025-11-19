//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct RevealInFinderButton: View {

    // MARK: - Properties

    private let location: URL

    // MARK: - Initializer

    init(_ location: URL) {
        self.location = location
    }
    
    // MARK: - View
    
    var body: some View {
        Button {
            NSWorkspace.shared.activateFileViewerSelecting([location])
        } label: {
            Image(systemName: "arrowshape.right.fill")
                .foregroundStyle(.blue)
                .font(.caption)
        }
        .buttonStyle(.plain)
    }
    
}

// MARK: - Preview

#Preview {
    RevealInFinderButton(.homeDirectory)
}
