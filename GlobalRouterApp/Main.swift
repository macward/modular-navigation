//
//  GlobalRouterAppApp.swift
//  GlobalRouterApp
//
//  Created by Max Ward on 13/11/2023.
//

import SwiftUI
import Routing
import Application
import HomeModule
import ProductsModule

@main
struct GlobalRouterAppApp: App {
    var body: some Scene {
        WindowGroup {
            CoordinatorView()
        }
    }
}
