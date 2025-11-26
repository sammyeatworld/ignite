//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

/// Represents errors related to network operations.
public enum NetworkError: Equatable {

    /// The URL provided was invalid.
    case invalidURL
    /// The request was malformed or rejected by the server.
    case badRequest
    /// An HTTP error occurred with the given status code.
    /// - Parameter Int: The HTTP status code (e.g., 404, 500).
    case httpError(Int)

}

extension NetworkError: LocalizedError {

    /// A localized, user-friendly description of the network error.
    public var errorDescription: String? {
        switch self {
        case .invalidURL:
            return NSLocalizedString(
                "The operation failed due to an invalid URL.",
                comment: "Displayed when a network request cannot be made because the URL is malformed or missing."
            )
        case .badRequest:
            return NSLocalizedString(
                "The operation failed due to a bad request.",
                comment: "Displayed when the server rejects the request due to client-side issues (e.g., invalid parameters)."
            )
        case .httpError(let statusCode):
            return unsafe String(
                format: NSLocalizedString(
                    "The operation failed due to an HTTP error: %d.",
                    comment: "Displayed when the server responds with a specific HTTP status code indicating failure (e.g., 404 or 500)."
                ), statusCode
            )
        }
    }

}
