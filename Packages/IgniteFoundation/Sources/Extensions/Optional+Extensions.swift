//
//  Optional+Extensions.swift
//  Ignite
//
//  Created by Samuel Majtan on 04/10/2025.
//

import Foundation

extension Optional: AnyOptional {
    
    /// A Boolean value indicating whether the optional is `nil`.
    ///
    /// ### Example:
    /// ```swift
    /// let value: String? = nil
    /// print(value.isNil) // true
    /// ```
    public var isNil: Bool { self == nil }
    
    /// A Boolean value indicating whether the optional contains a non-`nil` value.
    ///
    /// This is the inverse of `isNil`.
    ///
    /// ### Example:
    /// ```swift
    /// let value: Int? = 42
    /// print(value.isNotNil) // true
    /// ```
    public var isNotNil: Bool { self != nil }
    
}

public extension Optional where Wrapped == String {
    
    /// Returns the wrapped string or an empty string if the optional is `nil`.
    var unwrapped: String {
        self ?? ""
    }
    
}
