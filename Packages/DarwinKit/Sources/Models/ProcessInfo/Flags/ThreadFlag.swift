//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

public struct ThreadFlag: OptionSet, Sendable {
    
    public typealias RawValue = UInt32
    
    public var rawValue: UInt32
    
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
    
    /// TH_FLAGS_SWAPPED
    public static let swapped = ThreadFlag(rawValue: 0x1)
    /// TH_FLAGS_IDLE
    public static let idle = ThreadFlag(rawValue: 0x2)

}
