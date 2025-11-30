//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct SettingsPathView: View {

    // MARK: - Properties

    private let itemURL: URL

    // MARK: - Initializer

    init(_ itemURL: URL) {
        self.itemURL = itemURL
    }

    // MARK: - View

    var body: some View {
        HStack(alignment: .center) {
            Text(itemURL.path())
                .foregroundStyle(.secondary)

            RevealInFinderButton(itemURL)
        }
    }

}

// MARK: - Preview

#Preview {
    SettingsPathView(.homeDirectory)
}
