//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

public enum ProcessListType: UInt32, Sendable {
    
    /// PROC_ALL_PIDS
    case allPids = 1
    /// PROC_PGRP_ONLY
    case pgrpOnly = 2
    /// PROC_TTY_ONLY
    case ttyOnly = 3
    /// PROC_UID_ONLY
    case uidOnly = 4
    /// PROC_RUID_ONLY
    case ruidOnly = 5
    /// PROC_PPID_ONLY
    case ppidOnly = 6
    /// PROC_KDBG_ONLY
    case kdbgOnly = 7
    
}
