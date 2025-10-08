//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

@inlinable
func with<V>(_ value: V, modify: @escaping (inout V) -> Void) -> V {
    var value = value
    modify(&value)
    return value
}

@inlinable
func copy<P, Value>(_ p: P, modifying keyPath: WritableKeyPath<P, Value>, to newValue: Value) -> P {
    var copy = p
    copy[keyPath: keyPath] = newValue
    return copy
}

@inlinable
func round<T: BinaryFloatingPoint>(_ value: T, toNearest: T) -> T {
    round(value / toNearest) * toNearest
}

@inlinable
func round<T: BinaryInteger>(_ value: T, toNearest: T) -> T {
    T(round(Double(value), toNearest: Double(toNearest)))
}

@inlinable
func clamp<T: Comparable>(_ x: T, min y: T, max z: T) -> T {
    min(max(x, y), z)
}
