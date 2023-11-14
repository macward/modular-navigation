// The Swift Programming Language
// https://docs.swift.org/swift-book


import SwiftUI
import Routing

public struct SettingsView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    public init() {}
    
    public var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            VStack {
                Text("Helo from products module")
                    .foregroundStyle(Color.white)
                
                Button("Press me!") {
                    coordinator.dismissAll()
                }
            }
        }
    }
}
