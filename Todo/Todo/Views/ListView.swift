//
//  ContentView.swift
//  Todo
//
//  Created by froehly jean-baptiste on 28/01/2025.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var todoVM: TodoViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(todoVM.todos) {todo in
                    RowView(todo: todo)
                        .onTapGesture {
                            self.todoVM.updateTodo(todo: todo)
                        }
                }
                .onDelete(perform: todoVM.deleteTodo)
                .onMove(perform: todoVM.moveTodo)
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Todo")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink("Add", destination: AddTodoView())
                }
            }
        }
    }
}



#Preview {
    ListView()
        .environmentObject(TodoViewModel())
}
