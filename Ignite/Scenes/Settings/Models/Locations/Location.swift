//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import Defaults

struct Location: Hashable, Displayable, @MainActor Storable {

    let title: String
    var type: LocationType
    var path: URL

    init(_ title: String, type: LocationType = .default, path: URL) {
        self.title = title
        self.type = type
        self.path = path
    }

}
