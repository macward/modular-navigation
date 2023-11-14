// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI
import Routing

public struct HomeModuleView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    @State var name: String = "max ward"
    public init() {}
    
    public var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            VStack {
                Text("Helo \(name) from home module")
                    .foregroundStyle(Color.white)
                
                Button("Press me!") {
                    coordinator.present(sheet: .products($name))
                }
            }
        }
    }
}
