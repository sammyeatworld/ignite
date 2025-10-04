//
//  StringProtocol+Extensions.swift
//  Ignite
//
//  Created by Samuel Majtan on 04/10/2025.
//

import Foundation

public extension StringProtocol {

    /// Returns a copy of the string with the first character uppercased.
    ///
    /// Example:
    /// ```swift
    /// let text = "hello".firstUppercased // "Hello"
    /// ```
    var firstUppercased: String {
        prefix(1).uppercased() + dropFirst()
    }

    /// Returns a copy of the string with the first character capitalized (respects locale).
    ///
    /// Example:
    /// ```swift
    /// let text = "straße".firstCapitalized // "Straße"
    /// ```
    var firstCapitalized: String {
        prefix(1).capitalized + dropFirst()
    }

}
