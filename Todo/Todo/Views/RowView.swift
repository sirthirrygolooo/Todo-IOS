//
//  RowView.swift
//  Todo
//
//  Created by froehly jean-baptiste on 28/01/2025.
//

import SwiftUI
import Foundation

struct RowView: View {
    
    let todo: Todo
    
    var body: some View {
        HStack {
            Image(systemName: todo.isCompleted ? "checkmark.circle":"circle")
                .foregroundStyle(todo.isCompleted ? .green : .red)
            Text(todo.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 10)
    }
    
    
}
