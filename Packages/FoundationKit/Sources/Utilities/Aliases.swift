//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

// MARK: - Sendable

/// A closure that takes no parameters and returns nothing. Conforms to `Sendable`.
public typealias VoidClosure = @Sendable () -> Void

/// A closure that takes no parameters and returns a value of type `T`. Conforms to `Sendable`.
public typealias Producer<T> = @Sendable () -> T

/// A closure that consumes a value of type `T` without returning a result. Conforms to `Sendable`.
public typealias Consumer<T> = @Sendable (T) -> Void

/// A closure that consumes two values of types `T` and `U`. Conforms to `Sendable`.
public typealias BitConsumer<T, U> = @Sendable (T, U) -> Void

/// A closure that evaluates a value of type `T` and returns a `Bool`. Conforms to `Sendable`.
public typealias Predicate<T> = @Sendable (T) -> Bool

/// A closure that transforms a value of type `T` into a value of type `U`. Conforms to `Sendable`.
public typealias Transformer<T, U> = @Sendable (T) -> U

// MARK: - Async

/// A sendable asynchronous closure that takes no parameters and returns nothing.
public typealias AsyncVoidClosure = @Sendable () async -> Void

/// A sendable asynchronous closure that takes no parameters and returns a value of type `T`.
public typealias AsyncProducer<T> = @Sendable () async -> T

/// A sendable asynchronous closure that consumes a value of type `T` without returning a result.
public typealias AsyncConsumer<T> = @Sendable (T) async -> Void

/// A sendable asynchronous closure that consumes two values of types `T` and `U` without returning a result.
public typealias AsyncBitConsumer<T, U> = @Sendable (T, U) async -> Void

/// A sendable asynchronous closure that evaluates a value of type `T` and returns a `Bool`.
public typealias AsyncPredicate<T> = @Sendable (T) async -> Bool

/// A sendable asynchronous closure that transforms a value of type `T` into a value of type `U`.
public typealias AsyncTransformer<T, U> = @Sendable (T) async -> U
