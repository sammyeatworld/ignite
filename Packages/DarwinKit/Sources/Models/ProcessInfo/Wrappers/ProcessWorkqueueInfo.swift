//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

public struct ProcessWorkqueueInfo: LayoutWrapper {

    public typealias Layout = proc_workqueueinfo

    public var layout: Layout

    public init(layout: Layout) {
        self.layout = layout
    }

}
