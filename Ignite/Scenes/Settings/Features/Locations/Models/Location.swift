//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import Defaults

struct Location: Hashable, @MainActor Storable {

    var type: LocationType
    var url: URL

    init(_ type: LocationType = .default, url: URL) {
        self.type = type
        self.url = url
    }

}
