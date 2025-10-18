//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import DarwinKit

public final class Debugger {
    
    // MARK: - Properties
    
    private var configuration: DebugConfiguration
    
    // MARK: - Initializer
    
    public init(configuration: DebugConfiguration) {
        self.configuration = configuration
    }
    
}

// MARK: - Methods

public extension Debugger {
    
    /// Returns a snapshot of processes.
    ///
    /// Returns a dictionary mapping PID → short process name.
    ///
    /// Notes:
    /// - The list is inherently racy; processes may start or exit during the query.
    /// - Only processes visible under current security restrictions are included.
    ///
    /// - Parameter type: Process subset to enumerate (default: `.allPids`).
    /// - Throws: `DarwinKitError` if buffer allocation fails.
    func listProcesses(for type: ProcessListType = .allPids) throws(DarwinKitError) -> [UInt32: String] {
        let pidsBufferSize = proc_listpids(type.rawValue, 0, nil, 0)
        guard pidsBufferSize > 0 else {
            throw .insufficientBufferSize
        }
        
        let pidCount = numericCast(pidsBufferSize) / MemoryLayout<pid_t>.size
        let buffer = UnsafeMutablePointer<pid_t>.allocate(capacity: pidCount)
        defer { unsafe buffer.deallocate() }
        
        let pidsBuffer = unsafe proc_listpids(type.rawValue, 0, buffer, pidsBufferSize)
        guard pidsBuffer > 0 else {
            throw .insufficientBufferSize
        }
        
        let pidBufferCount = numericCast(pidsBuffer) / MemoryLayout<pid_t>.size
        let pids = unsafe Array(unsafe UnsafeBufferPointer(start: buffer, count: pidBufferCount))
        
        var processes = [UInt32: String]()
        for pid in pids where pid != 0 {
            var bsdBuffer = proc_bsdinfo()
            let bsdBufferSize = MemoryLayout.size(ofValue: bsdBuffer)
            let result = unsafe proc_pidinfo(pid, PROC_PIDTBSDINFO, 0, &bsdBuffer, numericCast(bsdBufferSize))
            guard result > 0 else { continue }
            processes[bsdBuffer.pbi_pid] = String(rawCString: bsdBuffer.pbi_name)
        }
        return processes
    }
    
    
    /// Attaches to the given process and returns a debug session with a handle.
    ///
    /// - Parameter pid: The target process identifier.
    /// - Returns: A `DebugSession` for the specified process.
    /// - Throws: `DarwinKitError` if the process cannot be accessed or attached.
    func attach(to pid: PID) throws(DarwinKitError) -> DebugSession {
        let handle = try taskHandle(for: pid)
        return DebugSession(taskHandle: handle)
    }
    
}
