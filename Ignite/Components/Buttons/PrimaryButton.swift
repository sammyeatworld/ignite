//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct PrimaryButton: View {

    // MARK: - Properties

    private let title: LocalizedStringResource
    private let action: () -> Void

    // MARK: - Initializer

    init(_ title: LocalizedStringResource, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }

    // MARK: - View

    var body: some View {
        Button(action: action) {
            Text(title)
                .padding(.vertical, 2)
                .frame(width: 180)
        }
    }

}

// MARK: - Preview

#Preview {
    PrimaryButton("Ignite") {
        print("Clicked")
    }
}
