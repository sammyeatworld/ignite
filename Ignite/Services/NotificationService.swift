//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import FactoryKit

// MARK: - Protocol

protocol NotificationServiceProtocol: AnyObject {

    // MARK: - Properties

    // MARK: - Methods

}

// MARK: - Implementation

final class NotificationService: NotificationServiceProtocol {

    // MARK: - Services

    // MARK: - Properties

    // MARK: - Initializer

}

// MARK: - Public Methods

extension NotificationService {

}

// MARK: - Private Methods

private extension NotificationService {

}

// MARK: - Factory

extension Container {

    var notificationService: Factory<NotificationServiceProtocol> {
        self { NotificationService() }
            .singleton
    }

}
