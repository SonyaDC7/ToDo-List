//
//  ContentView.swift
//  ToDo List
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var showNewTask = false
    @Query var toDos: [ToDoItem]
    @Environment(\.modelContext) var modelContext
    var body: some View {
        VStack {
            HStack {//start hstack
                Text("To Do List")
                    .font(.system(size:40))
                    .fontWeight(.black)
                Spacer()
                Button {//start button
                    withAnimation {showNewTask = true}
                }//end button
                label: {Text("+")
                        .font(.title)
                        .fontWeight(.bold)} //label button
            }//end hstack
            .padding()
            Spacer()
            
            List {//start task list
                ForEach(toDos) { toDoItem in
                    if toDoItem.isImportant {Text("‼️" + toDoItem.title)}
                    else {Text(toDoItem.title)}
                } //end for each closure
                .onDelete(perform: deleteToDo)
            }//end task list
            .listStyle(.plain)
            
        }//end vstack
        if showNewTask {NewToDoView(showNewTask: $showNewTask, toDoItem: ToDoItem(title:"", isImportant: false))}
    } //end var body
    func deleteToDo(at offsets: IndexSet) {
        for offset in offsets {
            let toDoItem = toDos[offset]
            modelContext.delete(toDoItem)}//end for loop
    } // end deleteToDo fxn
} //end struct contentview

#Preview {
    ContentView()
        .modelContainer(for: ToDoItem.self, inMemory: true)
}
