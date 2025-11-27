//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

enum DebugCommandCategory: @MainActor CommandCategory {

    case execution
    case stepping
    case breakpoints
    case attach
    case options

}

extension DebugCommandCategory {

    var id: Self {
        self
    }

}
