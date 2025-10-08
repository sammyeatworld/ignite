//
//  URL+Extensions.swift
//  Ignite
//
//  Created by Samuel Majtan on 04/10/2025.
//

import Foundation

public extension URL {
    
    init(_ staticString: StaticString) throws {
        guard let url = Self(string: "\(staticString)") else {
            throw NetworkError.invalidURL
        }
        self = url
    }
    
}
