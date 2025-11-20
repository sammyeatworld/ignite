//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct SettingsPathView: View {
    
    // MARK: - Properties
    
    private let path: URL
   
    // MARK: - Initializer

    init(_ path: URL) {
        self.path = path
    }

    // MARK: - View

    var body: some View {
        HStack(alignment: .center) {
            Text(path.path())
                .foregroundStyle(.secondary)

            RevealInFinderButton(path)
        }
    }

}

// MARK: - Preview

#Preview {
    SettingsPathView(.homeDirectory)
}
