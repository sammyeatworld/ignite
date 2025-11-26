//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

public enum ProcessShareMode: UInt32, Sendable {

    /// SM_COW
    case copyOnWrite = 1
    /// SM_PRIVATE
    case `private` = 2
    /// SM_EMPTY
    case empty = 3
    /// SM_SHARED
    case shared = 4
    /// SM_TRUESHARED
    case trueShared = 5
    /// SM_PRIVATE_ALIASED
    case privateAliased = 6
    /// SM_SHARED_ALIASED
    case sharedAliased = 7
    /// SM_LARGE_PAGE
    case largePage = 8

}
