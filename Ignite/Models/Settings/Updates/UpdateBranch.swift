//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Defaults

enum UpdateBranch: String, CaseIterable, Storable {
    
    case main
    case develop
    
    var title: String {
        switch self {
        case .main:
            "Main"
        case .develop:
            "Develop"
        }
    }
    
}

extension UpdateBranch: Identifiable {
    
    var id: Self {
        self
    }
    
}
