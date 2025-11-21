//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import Defaults

enum UpdateBranch: String, CaseIterable, Displayable, Storable {

    case main
    case develop
    
    var title: String {
        switch self {
        case .main:
            LocalizedStringResource.main.key
        case .develop:
            LocalizedStringResource.develop.key
        }
    }
    
}

extension UpdateBranch: Identifiable {

    var id: Self {
        self
    }

}
