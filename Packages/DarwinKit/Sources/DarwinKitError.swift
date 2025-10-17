//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

public enum DarwinKitError: Int32, Error {
    
    /// KERN_INVALID_ADDRESS
    case invalidAddress = 1
    /// KERN_PROTECTION_FAILURE
    case protectionFailure = 2
    /// KERN_NO_SPACE
    case noSpace = 3
    /// KERN_INVALID_ARGUMENT
    case invalidArgument = 4
    /// KERN_FAILURE
    case failure = 5
    /// KERN_RESOURCE_SHORTAGE
    case resourceShortage = 6
    /// KERN_NOT_RECEIVER
    case notReceiver = 7
    /// KERN_NO_ACCESS
    case noAccess = 8
    /// KERN_MEMORY_FAILURE
    case memoryFailure = 9
    /// KERN_MEMORY_ERROR
    case memoryError = 10
    /// KERN_ALREADY_IN_SET
    case alreadyInSet = 11
    /// KERN_NOT_IN_SET
    case notInSet = 12
    /// KERN_NAME_EXISTS
    case nameExists = 13
    /// KERN_ABORTED
    case aborted = 14
    /// KERN_INVALID_NAME
    case invalidName = 15
    /// KERN_INVALID_TASK
    case invalidTask = 16
    /// KERN_INVALID_RIGHT
    case invalidRight = 17
    /// KERN_INVALID_VALUE
    case invalidValue = 18
    /// KERN_UREFS_OVERFLOW
    case urefsOverflow = 19
    /// KERN_INVALID_CAPABILITY
    case invalidCapability = 20
    /// KERN_RIGHT_EXISTS
    case rightExists = 21
    /// KERN_INVALID_HOST
    case invalidHost = 22
    /// KERN_MEMORY_PRESENT
    case memoryPresent = 23
    /// KERN_MEMORY_DATA_MOVED
    case memoryDataMoved = 24
    /// KERN_MEMORY_RESTART_COPY
    case memoryRestartCopy = 25
    /// KERN_INVALID_PROCESSOR_SET
    case invalidProcessorSet = 26
    /// KERN_POLICY_LIMIT
    case policyLimit = 27
    /// KERN_INVALID_POLICY
    case invalidPolicy = 28
    /// KERN_INVALID_OBJECT
    case invalidObject = 29
    /// KERN_ALREADY_WAITING
    case alreadyWaiting = 30
    /// KERN_DEFAULT_SET
    case defaultSet = 31
    /// KERN_EXCEPTION_PROTECTED
    case exceptionProtected = 32
    /// KERN_INVALID_LEDGER
    case invalidLedger = 33
    /// KERN_INVALID_MEMORY_CONTROL
    case invalidMemoryControl = 34
    /// KERN_INVALID_SECURITY
    case invalidSecurity = 35
    /// KERN_NOT_DEPRESSED
    case notDepressed = 36
    /// KERN_TERMINATED
    case terminated = 37
    /// KERN_LOCK_SET_DESTROYED
    case lockSetDestroyed = 38
    /// KERN_LOCK_UNSTABLE
    case lockUnstable = 39
    /// KERN_LOCK_OWNED
    case lockOwned = 40
    /// KERN_LOCK_OWNED_SELF
    case lockOwnedSelf = 41
    /// KERN_SEMAPHORE_DESTROYED
    case semaphoreDestroyed = 42
    /// KERN_RPC_SERVER_TERMINATED
    case rpcServerTerminated = 43
    /// KERN_RPC_TERMINATE_ORPHAN
    case rpcTerminateOrphan = 44
    /// KERN_RPC_CONTINUE_ORPHAN
    case rpcContinueOrphan = 45
    /// KERN_NOT_SUPPORTED
    case notSupported = 46
    /// KERN_NODE_DOWN
    case nodeDown = 47
    /// KERN_NOT_WAITING
    case notWaiting = 48
    /// KERN_OPERATION_TIMED_OUT
    case operationTimedOut = 49
    /// KERN_CODESIGN_ERROR
    case codesignError = 50
    /// KERN_POLICY_STATIC
    case policyStatic = 51
    /// KERN_INSUFFICIENT_BUFFER_SIZE
    case insufficientBufferSize = 52
    /// KERN_DENIED
    case denied = 53
    /// KERN_MISSING_KC
    case missingKC = 54
    /// KERN_INVALID_KC
    case invalidKC = 55
    /// KERN_NOT_FOUND
    case notFound = 56
    /// Unknown
    case unknown
    
}

extension DarwinKitError: CustomStringConvertible {

    public var description: String {
        switch self {
        case .invalidAddress: 
            return "Specified address is not currently valid."
        case .protectionFailure: 
            return "Specified memory is valid but access is not permitted."
        case .noSpace: 
            return "Address range is already in use or unavailable."
        case .invalidArgument:
            return "Invalid or inappropriate argument."
        case .failure: 
            return "Generic failure occurred."
        case .resourceShortage: 
            return "Insufficient system resources."
        case .notReceiver: 
            return "Task does not hold receive rights for the port."
        case .noAccess: 
            return "Access restriction violation."
        case .memoryFailure: 
            return "Memory object has been destroyed."
        case .memoryError: 
            return "Memory object could not return data."
        case .alreadyInSet: 
            return "Receive right is already in the port set."
        case .notInSet: 
            return "Receive right is not a member of a port set."
        case .nameExists:
            return "Name already denotes a right in the task."
        case .aborted: 
            return "Operation aborted."
        case .invalidName: 
            return "Name doesn't denote a valid right."
        case .invalidTask: 
            return "Target task isn't active."
        case .invalidRight: 
            return "Invalid or inappropriate right."
        case .invalidValue: 
            return "Value out of valid range."
        case .urefsOverflow: 
            return "User reference count overflow."
        case .invalidCapability: 
            return "Improper (port) capability."
        case .rightExists: 
            return "Task already has send/receive rights for this port."
        case .invalidHost: 
            return "Target host isn't valid."
        case .memoryPresent: 
            return "Memory already present in object."
        case .memoryDataMoved: 
            return "Page data moved during copy operation."
        case .memoryRestartCopy: 
            return "Retry copy operation using a quicker method."
        case .invalidProcessorSet: 
            return "Not a valid processor set control port."
        case .policyLimit: 
            return "Scheduling attributes exceed thread limits."
        case .invalidPolicy: 
            return "Specified scheduling policy not enabled."
        case .invalidObject: 
            return "External memory manager failed to initialize."
        case .alreadyWaiting: 
            return "Thread already waiting on the event."
        case .defaultSet: 
            return "Attempted to destroy default processor set."
        case .exceptionProtected: 
            return "Exception port is protected."
        case .invalidLedger: 
            return "A ledger was required but not supplied."
        case .invalidMemoryControl: 
            return "Port is not a valid memory cache control port."
        case .invalidSecurity: 
            return "Argument is not a host security port."
        case .notDepressed: 
            return "Thread is not currently depressed."
        case .terminated: 
            return "Object terminated and unavailable."
        case .lockSetDestroyed: 
            return "Lock set destroyed and unavailable."
        case .lockUnstable: 
            return "Thread holding lock terminated."
        case .lockOwned: 
            return "Lock already owned by another thread."
        case .lockOwnedSelf: 
            return "Lock already owned by calling thread."
        case .semaphoreDestroyed: 
            return "Semaphore destroyed and unavailable."
        case .rpcServerTerminated: 
            return "Target RPC server terminated before reply."
        case .rpcTerminateOrphan:
            return "Terminated orphaned activation."
        case .rpcContinueOrphan: 
            return "Continued orphaned activation."
        case .notSupported: 
            return "Operation not supported."
        case .nodeDown: 
            return "Remote node down or inaccessible."
        case .notWaiting: 
            return "Thread was not actually waiting."
        case .operationTimedOut:
            return "Operation timed out."
        case .codesignError: 
            return "Page rejected due to signature check."
        case .policyStatic: 
            return "Requested property cannot be changed now."
        case .insufficientBufferSize: 
            return "Provided buffer is too small."
        case .denied: 
            return "Denied by security policy."
        case .missingKC:
            return "Missing kernel collection (KC)."
        case .invalidKC:
            return "Invalid kernel collection (KC)."
        case .notFound: 
            return "Search or query did not return a result."
        default:
            return "Unknown error has occured."
        }
    }

}

