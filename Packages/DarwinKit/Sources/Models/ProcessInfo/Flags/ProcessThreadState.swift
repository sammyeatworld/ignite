//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

public enum ProcessThreadState: UInt32, Sendable {

    /// TH_STATE_RUNNING
    case running = 1
    /// TH_STATE_STOPPED
    case stopped = 2
    /// TH_STATE_WAITING
    case waiting = 3
    /// TH_STATE_UNINTERRUPTIBLE
    case uninterruptible = 4
    /// TH_STATE_HALTED
    case halted = 5

}
