// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI
import Routing

public struct HomeModuleView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    public init() {}
    
    public var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            VStack {
                Text("Helo from home module")
                    .foregroundStyle(Color.white)
                
                Button("Press me!") {
                    coordinator.present(fullScreenCover: .products)
                }
            }
        }
    }
}
