//
//  Weak.swift
//  Ignite
//
//  Created by Samuel Majtan on 04/10/2025.
//

import Foundation

/// A wrapper that holds a weak reference to an object of type `T`.
public class Weak<T> where T: AnyObject {
    
    weak var value: T?
    
    public init(_ value: T) {
        self.value = value
    }

}
