//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation
import DarwinKit

@MainActor
public struct DebugAuthorization {

    public static var currentStatus: Status = .notDetermined

    public static func request() async -> Status {
        if Device.isSIPEnabled {
            currentStatus = .denied
        } else {
            currentStatus = .authorized
        }
        return currentStatus
    }

    public enum Status: CustomStringConvertible, Sendable {

        case authorized
        case denied
        case notDetermined

        public var description: String {
            switch self {
            case .authorized:
                "Authorized"
            case .denied:
                "Denied"
            case .notDetermined:
                "Not determined"
            }
        }

    }
    
}
