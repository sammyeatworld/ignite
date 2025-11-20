//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct SettingsPathView: View {
    
    // MARK: - Properties
    
    private let url: URL
   
    // MARK: - Initializer

    init(_ url: URL) {
        self.url = url
    }

    // MARK: - View

    var body: some View {
        HStack(alignment: .center) {
            Text(url.path())
                .foregroundStyle(.secondary)

            RevealInFinderButton(url)
        }
    }

}

// MARK: - Preview

#Preview {
    SettingsPathView(.homeDirectory)
}
