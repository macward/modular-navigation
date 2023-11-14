//
//  File.swift
//  
//
//  Created by Max Ward on 13/11/2023.
//

import SwiftUI

public enum Route: Equatable, Identifiable, Hashable {
    case home
    case products(Binding<String>)
    case settings
    
    public var id: Int {
        hashValue
    }
    
    public static func == (lhs: Route, rhs: Route) -> Bool {
        if case .home = lhs, case .home = rhs { return true }
        if case .products = lhs, case .products = rhs { return true }
        if case .settings = lhs, case .settings = rhs { return true }
        return false
    }
    
    public func hash(into hasher: inout Hasher) {
        switch self {
        case .home:
            hasher.combine(1)
        case .products:
            hasher.combine(2)
        case .settings:
            hasher.combine(3)
        }
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
