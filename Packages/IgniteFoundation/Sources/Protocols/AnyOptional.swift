//
//  AnyOptional.swift
//  Ignite
//
//  Created by Samuel Majtan on 04/10/2025.
//

import Foundation

/// A type-erased protocol that provides a uniform way of checking whether an optional value is `nil`.
public protocol AnyOptional {
    
    var isNil: Bool { get }
    
    var isNotNil: Bool { get }
    
}
