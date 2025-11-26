//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import FactoryKit

// MARK: - Protocol

protocol NetworkServiceProtocol: AnyObject {

    // MARK: - Properties

    // MARK: - Methods

}

// MARK: - Implementation

final class NetworkService: NetworkServiceProtocol {

    // MARK: - Services

    // MARK: - Properties

    // MARK: - Initializer

}

// MARK: - Public Methods

extension NetworkService {

}

// MARK: - Private Methods

private extension NetworkService {

}

// MARK: - Factory

extension Container {

    var networkService: Factory<NetworkServiceProtocol> {
        self { NetworkService() }
            .singleton
    }

}
