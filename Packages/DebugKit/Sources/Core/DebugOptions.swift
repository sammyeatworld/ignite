//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

public struct DebugOptions: OptionSet, Sendable {

    public typealias RawValue = UInt

    public let rawValue: RawValue

    public init(rawValue: RawValue) {
        self.rawValue = rawValue
    }

    // MARK: - Events

    public static let suspendOnDebuggingStart = DebugOptions(rawValue: 1 << 0)
    public static let suspendOnProcessEntryPoint = DebugOptions(rawValue: 1 << 1)
    public static let suspendOnThreadStartOrExit = DebugOptions(rawValue: 1 << 2)
    public static let suspendOnLibraryLoadOrUnload = DebugOptions(rawValue: 1 << 3)
    public static let suspendOnDebuggingMessage = DebugOptions(rawValue: 1 << 4)

    // MARK: - Logging

    public static let logSegmentModifications = DebugOptions(rawValue: 1 << 5)
    public static let logThreadStartOrExit = DebugOptions(rawValue: 1 << 6)
    public static let logLibraryLoadOrUnload = DebugOptions(rawValue: 1 << 7)
    public static let logBreakpoint = DebugOptions(rawValue: 1 << 8)
    public static let logDebuggingMessage = DebugOptions(rawValue: 1 << 9)

    // MARK: - Miscellaneous

    public static let optimizeSingleStepping = DebugOptions(rawValue: 1 << 10)
    public static let autoloadDebugSymbols = DebugOptions(rawValue: 1 << 11)
    public static let useHardwareTemporaryBreakpoints = DebugOptions(rawValue: 1 << 12)
    public static let showDebuggerBreakpointInstructions = DebugOptions(rawValue: 1 << 13)

}
