//
//  NavigationLazyView.swift
//  Pokedex
//
//  Created by Joe Vargas on 9/10/22.
//

import SwiftUI

struct NavigationLazyView<Content: View>: View {
    let build: () -> Content
    init(_ build: @autoclosure @escaping() -> Content) {
        self.build = build
    }
    
    var body: Content {
        build()
    }
}
