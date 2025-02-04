//
//  TodoApp.swift
//  Todo
//
//  Created by froehly jean-baptiste on 28/01/2025.
//

import SwiftUI

@main
struct TodoApp: App {
    var body: some Scene {
        WindowGroup {
            ListView()
                .environmentObject(TodoViewModel())
        }
    }
}
