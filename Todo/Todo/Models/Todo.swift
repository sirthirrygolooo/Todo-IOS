//
//  Todo.swift
//  Todo
//
//  Created by froehly jean-baptiste on 28/01/2025.
//

import Foundation

enum Priority : String, CaseIterable {
    case low = "Low"
    case normal = "Normal"
    case high = "High"
}

struct Todo: Identifiable {
    var id = UUID()
    var title: String
    var isCompleted: Bool
    var priotity: Priority
    
    static var testData = [
        Todo(title: "Task 1", isCompleted: true, priotity: .low),
        Todo(title: "Task 2", isCompleted: false, priotity: .high),
        Todo(title: "Task 3", isCompleted: true, priotity: .normal),
        Todo(title: "Task 4", isCompleted: false, priotity: .low)
    ]
    
    
}

