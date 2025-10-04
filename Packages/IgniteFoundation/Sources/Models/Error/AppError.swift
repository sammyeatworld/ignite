//
//  AppError.swift
//  Ignite
//
//  Created by Samuel Majtan on 04/10/2025.
//

import Foundation

/// A unified error type representing high-level application errors.
public enum AppError: Error, Equatable {

    /// A network-related error (e.g. no connection, timeout, HTTP error).
    case network(NetworkError)
    /// A data parsing or decoding error with an associated message.
    case parsing(String)
    /// An unspecified or unknown error, optionally with context.
    case unknown(String?)

}
