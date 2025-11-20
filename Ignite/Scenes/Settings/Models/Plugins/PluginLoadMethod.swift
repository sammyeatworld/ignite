//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import Defaults

enum PluginLoadMethod: String, CaseIterable, Displayable, Storable {

    case onStartup
    case onDemand

    var title: String {
        switch self {
        case .onStartup:
            "on Startup"
        case .onDemand:
            "on Demand"
        }
    }

}

extension PluginLoadMethod: Identifiable {

    var id: Self {
        self
    }

}
