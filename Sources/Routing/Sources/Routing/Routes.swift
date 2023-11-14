//
//  File.swift
//  
//
//  Created by Max Ward on 13/11/2023.
//

import SwiftUI

public enum Route: Equatable, Identifiable, Hashable {
    case products
    case home
    case settings
    
    public var id: Int {
        hashValue
    }
}

public extension Route {
    private var factory: any Factory {
        self as! any Factory
    }

    var contentView: AnyView {
        factory.view()
    }
}
