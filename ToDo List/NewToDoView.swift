//
//  NewToDoView.swift
//  ToDo List
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI
import SwiftData
struct NewToDoView: View {
    @Binding var showNewTask: Bool
    @Bindable var toDoItem: ToDoItem
    @Environment(\.modelContext) var modelContext
    var body: some View {
        VStack{ //start vstack
            Text("Task title:")
                .font(.title)
                .fontWeight(.semibold)
            TextField("Enter the task description...", text: $toDoItem.title, axis: .vertical)
                .font(.subheadline)
                .fontWeight(.semibold)
            Toggle(isOn: $toDoItem.isImportant) {
                Text("Is it important?") }
            Button("Save") {
                addToDo()
                showNewTask = false}
        }//end vstack
        .padding()
    } //end var body
    
    func addToDo() {
        let toDo = ToDoItem(title: toDoItem.title, isImportant: toDoItem.isImportant)
        modelContext.insert(toDo)
    }//end addToDo fxn
    
} // end struct NewToDoView

#Preview {
    NewToDoView(showNewTask: .constant(false), toDoItem: ToDoItem(title: "", isImportant: false))
}
