//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

public struct ProcessWorkqueueState: OptionSet, Sendable {

    public typealias RawValue = UInt32

    public var rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    /// WQ_EXCEEDED_CONSTRAINED_THREAD_LIMIT
    public static let exceededConstrainedThreadLimit = ProcessWorkqueueState(rawValue: 0x1)
    /// WQ_EXCEEDED_TOTAL_THREAD_LIMIT
    public static let exceededTotalThreadLimit = ProcessWorkqueueState(rawValue: 0x2)
    /// WQ_FLAGS_AVAILABLE
    public static let flagsAvailable = ProcessWorkqueueState(rawValue: 0x4)
    /// WQ_EXCEEDED_COOPERATIVE_THREAD_LIMIT
    public static let exceededCooperativeThreadLimit = ProcessWorkqueueState(rawValue: 0x8)
    /// WQ_EXCEEDED_ACTIVE_CONSTRAINED_THREAD_LIMIT
    public static let exceededActiveConstrainedThreadLimit = ProcessWorkqueueState(rawValue: 0x10)

}
