//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import FactoryKit
import GraphKit

// MARK: - Protocol

protocol GraphServiceProtocol: AnyObject {
  
    // MARK: - Properties

    // MARK: - Methods

}

// MARK: - Implementation

final actor GraphService: GraphServiceProtocol {
   
    // MARK: - Services

    // MARK: - Properties

    // MARK: - Initializer

}

// MARK: - Public Methods

extension GraphService {

}

// MARK: - Private Methods

private extension GraphService {

}

// MARK: - Factory

extension Container {
    
    var graphService: Factory<GraphServiceProtocol> {
        self { @MainActor in GraphService() }
            .cached
    }
    
}

