//
//  NewToDoView.swift
//  ToDo List
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct NewToDoView: View {
    var body: some View {
        VStack{ //start vstack
            Text("Task title:")
                .font(.title)
                .fontWeight(.semibold)
            TextField("Enter the task description...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .font(.subheadline)
                .fontWeight(.semibold)
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("Is it important?") }
            Button("Save") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/}
        }//end vstack
        .padding()
    } //end var body
} // end struct NewToDoView

#Preview {
    NewToDoView()
}
