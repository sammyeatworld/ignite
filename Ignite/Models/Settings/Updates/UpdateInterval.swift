//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Defaults

enum UpdateInterval: String, CaseIterable, Storable {

    case hourly
    case daily
    case weekly

    var title: String {
        switch self {
        case .hourly:
            "Hourly"
        case .daily:
            "Daily"
        case .weekly:
            "Weekly"
        }
    }

}

extension UpdateInterval: Identifiable {

    var id: Self {
        self
    }

}
