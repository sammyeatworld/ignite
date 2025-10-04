//
//  FetchState.swift
//  Ignite
//
//  Created by Samuel Majtan on 04/10/2025.
//

import Foundation

public enum FetchState<Success>: Equatable, Sendable where Success: Equatable & Sendable {

    case idle
    case loading
    case failure(AppError)
    case success(Success)

    public var isLoading: Bool {
        if case .loading = self {
            return true
        }
        return false
    }

    public var isLoadingOrIdle: Bool {
        if case .loading = self {
            return true
        } else if case .idle = self {
            return true
        }
        return false
    }

    public var isIdle: Bool {
        if case .idle = self {
            return true
        }
        return false
    }

    public var isFailure: Bool {
        if case .failure = self {
            return true
        }
        return false
    }

    public var isSuccess: Bool {
        if case .success = self {
            return true
        }
        return false
    }

    public var isFinished: Bool {
        isSuccess || isFailure
    }

    public func unwrapSuccess() throws -> Success {
        if case let .success(value) = self {
            return value
        } else {
            throw AppError.parsing("Response could not be unwrapped.")
        }
    }

    public func unwrapFailure() throws -> AppError {
        if case let .failure(error) = self {
            return error
        } else {
            throw AppError.parsing("Response could not be unwrapped.")
        }
    }

    public var successValue: Success? {
        if case .success(let successValue) = self {
            return successValue
        }
        return nil
    }

}

public extension Result where Success: Equatable & Sendable, Failure == AppError {

    func asReadyState() -> FetchState<Success> {
        switch self {
        case .success(let success):
            return .success(success)
        case .failure(let error):
            return .failure(error)
        }
    }

}
