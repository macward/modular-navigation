//
//  File.swift
//  
//
//  Created by Max Ward on 13/11/2023.
//

import SwiftUI

public class Coordinator: ObservableObject {
    
    @Published var path = NavigationPath()
    @Published var sheet: Route?
    @Published var fullScreenCover: Route?
    @Published var route: Route?
    
    public init() {}
    
    public func push(_ page: Route) {
        path.append(page)
    }

    public func present(sheet: Route) {
        self.sheet = sheet
    }
    
    public func present(fullScreenCover: Route) {
        self.fullScreenCover = fullScreenCover
    }
    
    public func pop() {
        path.removeLast()
    }
    
    public func popToRoot() {
        path.removeLast(path.count)
    }
    
    public func dismissSheet() {
        self.sheet = nil
    }
    
    public func dismissFullscreenCover() {
        self.fullScreenCover = nil
    }
    
    public func dismissAll() {
        self.sheet = nil
        self.fullScreenCover = nil
    }
    
    @ViewBuilder
    public func build(route: Route) -> some View {
        route.contentView
    }
    
}
