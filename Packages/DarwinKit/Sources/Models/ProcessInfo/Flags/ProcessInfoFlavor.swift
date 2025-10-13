//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

public enum ProcessInfoFlavor: UInt32 {
    
    /// PROC_PIDLISTFDS
    case listFds = 1
    /// PROC_PIDTASKALLINFO
    case taskAllInfo = 2
    /// PROC_PIDTBSDINFO
    case bsdInfo = 3
    /// PROC_PIDTASKINFO
    case taskInfo = 4
    /// PROC_PIDTHREADINFO
    case threadInfo = 5
    /// PROC_PIDLISTTHREADS
    case listThreads = 6
    /// PROC_PIDREGIONINFO
    case regionInfo = 7
    /// PROC_PIDREGIONPATHINFO
    case regionPathInfo = 8
    /// PROC_PIDVNODEPATHINFO
    case vnodePathInfo = 9
    /// PROC_PIDTHREADPATHINFO
    case threadPathInfo = 10
    /// PROC_PIDPATHINFO
    case pathInfo = 11
    /// PROC_PIDWORKQUEUEINFO
    case workqueueInfo = 12
    /// PROC_PIDT_SHORTBSDINFO
    case shortBSDInfo = 13
    /// PROC_PIDLISTFILEPORTS
    case listFilePorts = 14
    /// PROC_PIDTHREADID64INFO
    case threadID64Info = 15
    /// PROC_PID_RUSAGE
    case rUsage = 16
    
}
