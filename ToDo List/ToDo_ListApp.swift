//
//  ToDo_ListApp.swift
//  ToDo List
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI
import SwiftData

@main
struct ToDo_ListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: ToDoItem.self)
        }
    }
}
