//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

public struct ProcessFileGuardFlag: OptionSet, Sendable {

    public typealias RawValue = UInt32

    public var rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    /// PROC_FI_GUARD_CLOSE
    public static let close = ProcessFileGuardFlag(rawValue: 1 << 0)
    /// PROC_FI_GUARD_DUP
    public static let dup = ProcessFileGuardFlag(rawValue: 1 << 1)
    /// PROC_FI_GUARD_SOCKET_IPC
    public static let socketIPC = ProcessFileGuardFlag(rawValue: 1 << 2)
    /// PROC_FI_GUARD_FILEPORT
    public static let fileport = ProcessFileGuardFlag(rawValue: 1 << 3)

}
