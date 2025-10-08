//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import FoundationKit
import SwiftUI

/// A view modifier that executes a closure only the first time the view appears.
///
/// This modifier triggers the provided action when the view first appears on the screen.
/// The action is executed only once, and subsequent appearances do not trigger it again.
///
/// - Parameters:
///   - action: An optional closure to perform when the view first appears.
/// - Returns: A modified view that executes the action on first appearance.
public struct ViewFirstAppearModifier: ViewModifier {

    // MARK: - Properties

    @State
    private var didAppear = false
    private let action: VoidClosure?

    // MARK: - Lifecycle

    public init(perform action: VoidClosure? = nil) {
        self.action = action
    }

    // MARK: - View

    public func body(content: Content) -> some View {
        content.onAppear {
            if !didAppear {
                didAppear.toggle()
                action?()
            }
        }
    }

}
