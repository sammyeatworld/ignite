//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

enum DebugCommandGroup: @MainActor CommandGroupItem {

    case execution
    case stepping
    case breakpoints
    case attach
    case options

}

extension DebugCommandGroup {

    var id: Self {
        self
    }

}
