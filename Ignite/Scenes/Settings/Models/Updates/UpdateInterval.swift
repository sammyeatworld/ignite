//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import Defaults

enum UpdateInterval: String, CaseIterable, Displayable, Storable {

    case hourly
    case daily
    case weekly

    var title: String {
        switch self {
        case .hourly:
            LocalizedStringResource.hourly.key
        case .daily:
            LocalizedStringResource.daily.key
        case .weekly:
            LocalizedStringResource.weekly.key
        }
    }

}

extension UpdateInterval: Identifiable {

    var id: Self {
        self
    }

}
