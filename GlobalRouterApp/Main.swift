//
//  GlobalRouterAppApp.swift
//  GlobalRouterApp
//
//  Created by Max Ward on 13/11/2023.
//

import SwiftUI
import Routing
import Application

@main
struct GlobalRouterAppApp: App {
    
    init() {
        AppRouter.registerRoutes()
    }
    var body: some Scene {
        WindowGroup {
            CoordinatorView(route: .home)
        }
    }
}
