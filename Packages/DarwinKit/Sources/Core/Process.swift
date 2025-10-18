//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

/// Obtains the Mach task port for a process.
///
/// Wraps task_for_pid to return a TaskHandle (Mach port name) for the given PID.
/// Requires appropriate privileges (e.g., root or permitted entitlement); sandbox
/// or policy may deny access.
/// 
/// - Parameter pid: Target process ID.
/// - Returns: The task port name for the process.
/// - Throws: `DarwinKitError` if the kernel call fails.
public func taskHandle(for pid: PID) throws(DarwinKitError) -> TaskHandle {
    var handle = TaskHandle()
    let result = unsafe task_for_pid(mach_task_self_, pid, &handle)
    guard result == KERN_SUCCESS else {
        throw DarwinKitError(rawValue: result) ?? .unknown
    }
    return handle
}
