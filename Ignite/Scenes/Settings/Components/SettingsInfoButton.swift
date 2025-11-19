//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct SettingsInfoButton: View {

    // MARK: - Properties

    @Binding
    var showingInfo: Bool
    private let title: String

    // MARK: - Initializer

    init(_ title: String, showingInfo: Binding<Bool>) {
        self.title = title
        self._showingInfo = showingInfo
    }

    // MARK: - View

    var body: some View {
        HStack {
            Text(title)
            Button {
                showingInfo.toggle()
            } label: {
                Image(systemName: "info.circle")
            }
        }
        .foregroundStyle(.secondary)
    }

}

// MARK: - Preview

#Preview {
    SettingsInfoButton("Default", showingInfo: .constant(false))
}
