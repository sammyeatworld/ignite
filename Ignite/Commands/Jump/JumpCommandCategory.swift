//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

enum JumpCommandCategory: @MainActor CommandCategory {

    case navigation
    case targets
    case crossReferences

}

extension JumpCommandCategory {

    var id: Self {
        self
    }

}
