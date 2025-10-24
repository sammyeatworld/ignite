//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import Defaults

enum UpdateBranch: String, CaseIterable, Storable {
    
    case main
    case develop
    
    var title: LocalizedStringResource {
        switch self {
        case .main:
            .main
        case .develop:
            .develop
        }
    }
    
}

extension UpdateBranch: Identifiable {
    
    var id: Self {
        self
    }
    
}
