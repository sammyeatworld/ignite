//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

public struct ProcessThreadFlag: OptionSet, Sendable {
    
    public typealias RawValue = Int32
    
    public var rawValue: Int32
    
    public init(rawValue: Int32) {
        self.rawValue = rawValue
    }
    
    /// TH_FLAGS_SWAPPED
    public static let swapped = ProcessThreadFlag(rawValue: 0x1)
    /// TH_FLAGS_IDLE
    public static let idle = ProcessThreadFlag(rawValue: 0x2)

}
