//
//  File.swift
//  
//
//  Created by Max Ward on 13/11/2023.
//

import SwiftUI
import Routing
import HomeModule
import ProductsModule
import SettingsModule

extension Route: Factory {
    @ViewBuilder
    public func contentView() -> some View {
        switch self {
        case .home:
            HomeModuleView()
        case .products:
            ProductsModuleView()
        case .settings:
            SettingsView()
        }
    }
}

