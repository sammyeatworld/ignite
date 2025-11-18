//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import FactoryKit
import DebugKit

// MARK: - Protocol

protocol PluginServiceProtocol: AnyObject {
  
    // MARK: - Properties

    // MARK: - Methods

}

// MARK: - Implementation

final actor PluginService: PluginServiceProtocol {
   
    // MARK: - Services

    // MARK: - Properties

    // MARK: - Initializer

}

// MARK: - Public Methods

extension PluginService {

}

// MARK: - Private Methods

private extension PluginService {

}

// MARK: - Factory

extension Container {
    
    var pluginService: Factory<PluginServiceProtocol> {
        self { @MainActor in PluginService() }
            .singleton
    }
    
}
