//
//  AppState.swift
//  Ignite
//
//  Created by Samuel Majtan on 04/10/2025.
//

import Foundation

/// Represents the overall authentication state of the application.
public enum AppState: Codable, Equatable, Hashable, Sendable {
    
    /// Indicates that the user is successfully attached and has access to process.
    case attached
    /// The user is not attached and must attach in order to continue.
    case detached
    /// The app is determining its current state (e.g., during startup).
    case unknown

}
