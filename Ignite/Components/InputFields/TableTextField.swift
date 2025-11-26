//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import SwiftUI

struct TableTextField: View {

    // MARK: - Properties

    @State
    private var isEditing = false
    @FocusState
    private var isFocused: Bool
    @Binding
    var text: String

    // MARK: - Lifecycle

    init(isFocused: FocusState<Bool>, text: Binding<String>) {
        self._isFocused = isFocused
        self._text = text
    }

    // MARK: - View

    var body: some View {
        TextField("", text: $text)
            .focused($isFocused)
            .frame(maxWidth: .infinity)
            .textFieldStyle(.plain)
            .onTapGesture {
                isEditing = true
                isFocused = true
            }
            .onSubmit {
                isEditing = false
                isFocused = false
            }
    }

}
