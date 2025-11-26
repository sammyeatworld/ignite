//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

public struct ProcessFlag: OptionSet, Sendable {

    public typealias RawValue = UInt32

    public var rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    /// PROC_FLAG_SYSTEM
    public static let system = ProcessFlag(rawValue: 0x1)
    /// PROC_FLAG_TRACED
    public static let traced = ProcessFlag(rawValue: 0x2)
    /// PROC_FLAG_INEXIT
    public static let exiting = ProcessFlag(rawValue: 0x4)
    /// PROC_FLAG_PPWAIT
    public static let parentWait = ProcessFlag(rawValue: 0x8)
    /// PROC_FLAG_LP64
    public static let is64bit = ProcessFlag(rawValue: 0x10)
    /// PROC_FLAG_SLEADER
    public static let sessionLeader = ProcessFlag(rawValue: 0x20)
    /// PROC_FLAG_CTTY
    public static let hasCTTY = ProcessFlag(rawValue: 0x40)
    /// PROC_FLAG_CONTROLT
    public static let hasControllingTTY = ProcessFlag(rawValue: 0x80)
    /// PROC_FLAG_THCWD
    public static let hasThreadCWD = ProcessFlag(rawValue: 0x100)
    /// PROC_FLAG_PC_THROTTLE
    public static let controlThrottle = ProcessFlag(rawValue: 0x200)
    /// PROC_FLAG_PC_SUSP
    public static let controlSuspend = ProcessFlag(rawValue: 0x400)
    /// PROC_FLAG_PC_KILL
    public static let controlKill = ProcessFlag(rawValue: 0x600)
    /// PROC_FLAG_PC_MASK
    public static let controlMask = ProcessFlag(rawValue: 0x600)
    /// PROC_FLAG_PA_THROTTLE
    public static let actionThrottle = ProcessFlag(rawValue: 0x800)
    /// PROC_FLAG_PA_SUSP
    public static let actionSuspend = ProcessFlag(rawValue: 0x1000)
    /// PROC_FLAG_PSUGID
    public static let hasSetPrivileges = ProcessFlag(rawValue: 0x2000)
    /// PROC_FLAG_EXEC
    public static let hasExecuted = ProcessFlag(rawValue: 0x4000)

}
