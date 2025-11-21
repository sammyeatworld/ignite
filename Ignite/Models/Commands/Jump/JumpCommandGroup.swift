//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

enum JumpCommandGroup: @MainActor CommandGroupItem {

    case navigation
    case targets
    case crossReferences

}

extension JumpCommandGroup {

    var id: Self {
        self
    }

}
