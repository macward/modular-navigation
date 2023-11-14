//
//  File.swift
//  
//
//  Created by Max Ward on 13/11/2023.
//

import Routing
import SwiftUI
import SettingsModule
import HomeModule
import ProductsModule

public struct AppRouter {
    public static func registerRoutes() {
        ModuleLoader.shared.register(routes: [
            .init(path: "/settings", destination: SettingsView()),
            .init(path: "/home", destination: HomeModuleView()),
            .init(path: "/products", destination: ProductsModuleView())
        ])
    }
}
