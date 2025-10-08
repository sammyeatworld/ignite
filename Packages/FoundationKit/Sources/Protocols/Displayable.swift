//
//  Displayable.swift
//  Ignite
//
//  Created by Samuel Majtan on 04/10/2025.
//

import Foundation

protocol Displayable {
    
    var title: String { get }
    
}

extension Displayable where Self: CustomStringConvertible {
    
    var description: String {
        title
    }
    
}
