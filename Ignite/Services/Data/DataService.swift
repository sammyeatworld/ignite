//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import FactoryKit
import DataKit

// MARK: - Protocol

protocol DataServiceProtocol: AnyObject {
  
    // MARK: - Properties

    // MARK: - Methods

}

// MARK: - Implementation

final actor DataService: DataServiceProtocol {
   
    // MARK: - Services

    // MARK: - Properties

    // MARK: - Initializer

}

// MARK: - Public Methods

extension DataService {

}

// MARK: - Private Methods

private extension DataService {

}

// MARK: - Factory

extension Container {
    
    var dataService: Factory<DataServiceProtocol> {
        self { @MainActor in DataService() }
            .cached
    }
    
}
