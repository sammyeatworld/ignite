//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

public struct ProcessBSDInfo: LayoutWrapper {

    public typealias Layout = proc_bsdinfo

    public var layout: Layout

    public init(layout: Layout) {
        self.layout = layout
    }

}
