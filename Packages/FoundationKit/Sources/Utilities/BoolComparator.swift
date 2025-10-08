//
//  BoolComparator.swift
//  Ignite
//
//  Created by Samuel Majtan on 04/10/2025.
//

import Foundation

/// A comparator for sorting Boolean values based on a specified order.
///
/// By default (`.forward`), `true` is greater than `false`.
/// When set to `.reverse`, the order is flipped.
/// ```
///
/// - Note: The default sorting order is `.forward`.
public struct BoolComparator: SortComparator {

    public var order: SortOrder = .forward

    public func compare(_ lhs: Bool, _ rhs: Bool) -> ComparisonResult {
        switch (lhs, rhs) {
        case (true, false):
            return order == .forward ? .orderedDescending : .orderedAscending
        case (false, true):
            return order == .forward ? .orderedAscending : .orderedDescending
        default:
            return .orderedSame
        }
    }

}
