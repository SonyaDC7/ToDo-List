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
                ForEach(toDos) { toDoItem in Text(toDoItem.title)
                } //end iterative closure
            }//end task list
            
        }//end vstack
        if showNewTask {NewToDoView()}
    } //end var body
} //end struct contentview

#Preview {
    ContentView()
}
