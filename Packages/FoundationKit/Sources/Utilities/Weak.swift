//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

/// A wrapper that holds a weak reference to an object of type `T`.
public class Weak<T> where T: AnyObject {
    
    weak var value: T?
    
    public init(_ value: T) {
        self.value = value
    }

}
