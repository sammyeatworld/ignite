//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

enum SearchCommandGroup: @MainActor CommandGroupItem {

    case searchType
    case contentSearch
    case options

}

extension SearchCommandGroup {

    var id: Self {
        self
    }

}
