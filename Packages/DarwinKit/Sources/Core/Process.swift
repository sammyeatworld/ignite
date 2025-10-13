//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Darwin

public func listProcesses(for type: ProcessListType) {
    // Ask kernel how much space do we need in bytes
    let pidsBufferSize = proc_listpids(type.rawValue, 0, nil, 0)
    guard pidsBufferSize > 0 else { return }
    
    // Allocate enough pid_t elements
    let count = numericCast(pidsBufferSize) / MemoryLayout<pid_t>.size
    let buffer = UnsafeMutablePointer<pid_t>.allocate(capacity: count)
    defer { unsafe buffer.deallocate() }
    
    // Fill buffer
    let actualBytes = unsafe proc_listpids(type.rawValue, 0, buffer, pidsBufferSize)
    guard actualBytes > 0 else { return }
    
    let actualCount = numericCast(actualBytes) / MemoryLayout<pid_t>.size
    let pids = unsafe Array(unsafe UnsafeBufferPointer(start: buffer, count: actualCount))
    
    for pid in pids where pid != 0 {
        var bsdBuffer = proc_bsdinfo()
        let bsdBufferSize = MemoryLayout.size(ofValue: bsdBuffer)
        let result = unsafe proc_pidinfo(pid, PROC_PIDTBSDINFO, 0, &bsdBuffer, numericCast(bsdBufferSize))
        
        print(bsdBuffer.pbi_pid)
    }
}
