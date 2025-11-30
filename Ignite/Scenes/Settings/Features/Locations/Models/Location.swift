//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import Defaults

struct Location: Hashable, @MainActor Storable {

    var url: URL
    var type: LocationType

    init(_ url: URL, _ type: LocationType = .default) {
        self.url = url
        self.type = type
    }

}
