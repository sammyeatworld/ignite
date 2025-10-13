//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

public struct ProcessFileInfoFlag: OptionSet, Sendable {
    
    public typealias RawValue = UInt32
    
    public var rawValue: UInt32
    
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
    
    /// PROC_FP_SHARED
    public static let shared = ProcessFileInfoFlag(rawValue: 0x1)
    /// PROC_FP_CLEXEC
    public static let closeOnExec = ProcessFileInfoFlag(rawValue: 0x2)
    /// PROC_FP_GUARDED
    public static let guarded = ProcessFileInfoFlag(rawValue: 0x4)
    /// PROC_FP_CLFORK
    public static let closeOnFork = ProcessFileInfoFlag(rawValue: 0x8)
    
    
}
