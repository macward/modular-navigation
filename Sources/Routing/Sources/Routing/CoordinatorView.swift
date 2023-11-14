//
//  SwiftUIView.swift
//  
//
//  Created by Max Ward on 13/11/2023.
//

import SwiftUI

public struct CoordinatorView: View {
    
    @StateObject private var coordinator = Coordinator()
    
    public init() {}
    
    public var body: some View {
        NavigationStack(path: $coordinator.path) {
            coordinator.build(route: .home)
                .navigationDestination(item: $coordinator.route, destination: { route in
                    route.contentView
                })
                .sheet(item: $coordinator.sheet) { sheet in
                    sheet.contentView
                }
                .fullScreenCover(item: $coordinator.fullScreenCover) { fullScreenCover in
                    fullScreenCover.contentView
                }
        }
        .environmentObject(coordinator)
    }
}
