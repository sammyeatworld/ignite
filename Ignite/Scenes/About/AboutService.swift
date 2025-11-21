//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import FactoryKit

// MARK: - Protocol

protocol AboutServiceProtocol: AnyObject {
  
    // MARK: - Properties

    // MARK: - Methods

}

// MARK: - Implementation

final actor AboutService: AboutServiceProtocol {
   
    // MARK: - Services

    // MARK: - Properties

    // MARK: - Initializer

}

// MARK: - Public Methods

extension AboutService {

}

// MARK: - Private Methods

private extension AboutService {
    
}

// MARK: - Factory

extension Container {
    
    var aboutService: Factory<AboutServiceProtocol> {
        self { @MainActor in AboutService() }
            .cached
    }
    
}
