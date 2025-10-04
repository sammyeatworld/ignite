//
//  DispatchQueue+Extensions.swift
//  Ignite
//
//  Created by Samuel Majtan on 04/10/2025.
//

import Foundation

public extension DispatchQueue {
    
    /// Executes a block of code on the main queue after a specified delay.
    ///
    /// - Parameters:
    ///   - seconds: The delay in seconds before executing the block.
    ///   - block: A closure to execute after the delay.
    ///
    /// Example:
    /// ```swift
    /// DispatchQueue.delay(1.5) {
    ///     print("Executed after 1.5 seconds")
    /// }
    /// ```
    static func delay(_ seconds: Double, _ block: @Sendable @escaping () -> Void) {
        main.asyncAfter(deadline: .now() + seconds, execute: block)
    }
    
}
