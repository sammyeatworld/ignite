//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct SettingsPathView: View {

    // MARK: - Properties

    private let locationURL: URL

    // MARK: - Initializer

    init(_ locationURL: URL) {
        self.locationURL = locationURL
    }

    // MARK: - View

    var body: some View {
        HStack(alignment: .center) {
            Text(locationURL.path())
                .foregroundStyle(.secondary)

            RevealInFinderButton(locationURL)
        }
    }

}

// MARK: - Preview

#Preview {
    SettingsPathView(.homeDirectory)
}
