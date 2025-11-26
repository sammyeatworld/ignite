//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import Darwin

@dynamicMemberLookup
public protocol LayoutWrapper {

    associatedtype Layout

    var layout: Layout { get set }

}

public extension LayoutWrapper {

    subscript<Value>(dynamicMember keyPath: KeyPath<Layout, Value>) -> Value {
        layout[keyPath: keyPath]
    }

}

public extension LayoutWrapper {

    static var layoutSize: Int {
        MemoryLayout<Layout>.size
    }

    var layoutSize: Int {
        MemoryLayout<Layout>.size
    }

}

public extension LayoutWrapper {

    static func layoutOffset(of key: PartialKeyPath<Layout>) -> Int {
        MemoryLayout<Layout>.offset(of: key)!
    }

    func layoutOffset(of key: PartialKeyPath<Layout>) -> Int {
        MemoryLayout<Layout>.offset(of: key)!
    }

}
