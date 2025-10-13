//
// Copyright (c) 2025, Samuel Majtan
//
// SPDX-License-Identifier: GPL-3.0
//

import Foundation

public struct ProcessBSDShortInfo: LayoutWrapper {
    
    public typealias Layout = proc_bsdshortinfo
    
    public var layout: proc_bsdshortinfo
    
    public init(layout: proc_bsdshortinfo) {
        self.layout = layout
    }
    
}
