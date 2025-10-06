//
//  TableTextField.swift
//  Ignite
//
//  Created by Samuel Majtan on 06/10/2025.
//

import SwiftUI

public struct TableTextField: View {

    // MARK: - Properties

    @State
    private var isEditing = false
    @FocusState
    private var isFocused: Bool
    @Binding
    var text: String

    // MARK: - Lifecycle

    public init(isFocused: FocusState<Bool>, text: Binding<String>) {
        self._isFocused = isFocused
        self._text = text
    }

    // MARK: - View

    public var body: some View {
        TextField("", text: $text)
            .textFieldStyle(.plain)
            .focused($isFocused)
            .onTapGesture {
                isEditing = true
                isFocused = true
            }
            .onSubmit {
                isEditing = false
                isFocused = false
            }
            .frame(maxWidth: .infinity)
    }

}
