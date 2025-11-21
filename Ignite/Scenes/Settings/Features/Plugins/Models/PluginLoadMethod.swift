//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import Defaults

enum PluginLoadMethod: String, CaseIterable, Displayable, Storable {

    case startup
    case demand

    var title: String {
        switch self {
        case .startup:
            "Startup"
        case .demand:
            "Demand"
        }
    }

}

extension PluginLoadMethod: Identifiable {

    var id: Self {
        self
    }

}
