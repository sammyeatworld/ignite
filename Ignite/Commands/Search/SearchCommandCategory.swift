//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

enum SearchCommandCategory: @MainActor CommandCategory {

    case searchType
    case contentSearch
    case options

}

extension SearchCommandCategory {

    var id: Self {
        self
    }

}
