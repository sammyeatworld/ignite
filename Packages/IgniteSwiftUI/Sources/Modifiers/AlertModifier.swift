//
//  AlertModifier.swift
//  Ignite
//
//  Created by Samuel Majtan on 06/10/2025.
//

import IgniteFoundation
import SwiftUI

/// A view modifier that presents an error alert.
///
/// This modifier displays an alert with a cancel button when an error is provided,
/// and it automatically clears the error when the alert is dismissed.
///
/// - Parameters:
///   - errorAlert: A binding to an optional `AppError` that triggers the alert.
///   - cancelAction: An optional closure to perform when the cancel button is tapped.
/// - Returns: A modified view that shows an alert when an error is set.
public struct ErrorAlertModifier: ViewModifier {

    // MARK: - Properties

    @Binding
    var errorAlert: AppError?
    let cancelAction: VoidClosure?

    // MARK: - View

    public func body(content: Content) -> some View {
        content
            .alert(
                "Error",
                isPresented: Binding(
                    get: { errorAlert != nil },
                    set: { _ in errorAlert = nil }
                ),
                actions: {
                    Button("Cancel", role: .cancel) {
                        cancelAction?() ?? ()
                    }
                },
                message: {
                    Text(errorAlert?.localizedDescription ?? "Error")
                }
            )
    }

}

/// A view modifier that presents an informational alert with a customizable message.
///
/// This modifier displays an alert with an "OK" button when a `messageAlert` string
/// is provided. It clears the message when the alert is dismissed.
///
/// - Parameters:
///   - messageAlert: A binding to an optional message string that triggers the alert.
///   - messageAction: An optional closure to perform when the "OK" button is tapped.
/// - Returns: A modified view that shows an alert with the provided message.
public struct MessageAlertModifier: ViewModifier {

    // MARK: - Properties

    @Binding
    var messageAlert: String?
    let messageAction: VoidClosure?

    // MARK: - View

    public func body(content: Content) -> some View {
        content
            .alert(
                "Info",
                isPresented: Binding(
                    get: { messageAlert != nil },
                    set: { _ in messageAlert = nil }
                ),
                actions: {
                    Button("OK", role: .cancel) {
                        messageAction?() ?? ()
                    }
                },
                message: {
                    Text(messageAlert ?? "Info")
                }
            )
    }

}

/// A view modifier that presents a warning alert with customizable actions.
///
/// This modifier displays an alert with two buttons: one for a destructive action
/// and one for a cancel action. The alert appears when a `warningAlert` string is provided.
///
/// - Parameters:
///   - warningAlert: A binding to an optional warning message string that triggers the alert.
///   - destructiveActionText: The text for the destructive action button.
///   - desctructiveAction: A closure to perform when the destructive action is tapped.
///   - cancelActionText: The text for the cancel action button.
///   - cancelAction: A closure to perform when the cancel action is tapped.
/// - Returns: A modified view that shows the warning alert with the provided actions.
public struct WarningAlertModifier: ViewModifier {

    // MARK: - Properties

    @Binding
    var warningAlert: String?
    let destructiveActionText: String
    let desctructiveAction: VoidClosure?
    let cancelActionText: String
    let cancelAction: VoidClosure?

    // MARK: - View

    public func body(content: Content) -> some View {
        content
            .alert(
                "Warning",
                isPresented: Binding(
                    get: { warningAlert != nil },
                    set: { _ in warningAlert = nil }
                ),
                actions: {
                    Button(destructiveActionText, role: .destructive) {
                        desctructiveAction?() ?? ()
                    }
                    Button(cancelActionText, role: .cancel) {
                        cancelAction?() ?? ()
                    }
                },
                message: {
                    Text(warningAlert ?? "Warning")
                }
            )
    }

}
