//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

public struct ProcessTaskAllInfo: LayoutWrapper {
    
    public typealias Layout = proc_taskallinfo
    
    public var layout: Layout
    
    public init(layout: Layout) {
        self.layout = layout
    }
    
}
