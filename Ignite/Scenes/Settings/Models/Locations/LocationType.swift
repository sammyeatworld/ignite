//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import Defaults

enum LocationType: String, CaseIterable, Hashable, Displayable, Storable {

    case `default`
    case relative
    case custom

    var title: String {
        switch self {
        case .default:
            LocalizedStringResource.`default`.key
        case .relative:
            LocalizedStringResource.relative.key
        case .custom:
            LocalizedStringResource.custom.key
        }
    }

}

extension LocationType: Identifiable {

    var id: Self {
        self
    }

}
