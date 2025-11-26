//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

public enum ProcessRegionFlag: UInt32, Sendable {

    /// PROC_REGION_SUBMAP
    case submap = 1
    /// PROC_REGION_SHARED
    case shared = 2

}
