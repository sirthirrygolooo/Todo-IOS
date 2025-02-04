//
//  AddTodoView.swift
//  Todo
//
//  Created by froehly jean-baptiste on 28/01/2025.
//

import SwiftUI

struct AddTodoView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var todoVM: TodoViewModel
    
    @State private var todoTitle: String = ""
    @State private var priority: Priority = .normal
    
    var body: some View {
        VStack {
            TextField("Enter your task", text: $todoTitle)
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color(.systemGray4))
                .cornerRadius(10)
            
            Picker("Priority", selection: $priority){
                ForEach(Priority.allCases, id: \.self) { priority in
                    Text(priority.rawValue)}
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Button {
                self.todoVM.addTodo(todo: Todo(title: todoTitle, isCompleted: false, priotity: priority))
                self.presentationMode.wrappedValue.dismiss()
                
            } label: {
                Text("SAVE")
                    .foregroundStyle(.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(Color.accentColor)
                    .cornerRadius(10)
            }
            
            Spacer()
        }
        .padding(14)
        .navigationTitle("Add a todo")
    }
    
}

#Preview {
    NavigationView {
        AddTodoView()
            .environmentObject(TodoViewModel())
    }
}
