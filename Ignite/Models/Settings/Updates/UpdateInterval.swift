//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import Defaults

enum UpdateInterval: String, CaseIterable, Storable {

    case hourly
    case daily
    case weekly

    var title: LocalizedStringResource {
        switch self {
        case .hourly:
            .hourly
        case .daily:
            .daily
        case .weekly:
            .weekly
        }
    }

}

extension UpdateInterval: Identifiable {

    var id: Self {
        self
    }

}
