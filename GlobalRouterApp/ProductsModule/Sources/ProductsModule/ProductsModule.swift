// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI
import Routing

public struct ProductsModuleView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    public init() {}
    
    public var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            VStack {
                Text("Helo from products module")
                    .foregroundStyle(Color.white)
                
                Button("Open Settings") {
                    coordinator.present(sheet: .settings)
                }
                Button("Dismiss") {
                    coordinator.dismissAll()
                }
            }
        }
    }
}
