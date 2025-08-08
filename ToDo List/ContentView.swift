//
//  ContentView.swift
//  ToDo List
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {//start hstack
                Text("To Do List")
                    .font(.system(size:40))
                    .fontWeight(.black)
                Spacer()
                Button {//start button
                    
                }//end button
                label: {Text("+")
                        .font(.title)
                        .fontWeight(.bold)} //label button
            }//end hstack
            .padding()
            Spacer()
        }//end vstack
    } //end var body
} //end struct contentview

#Preview {
    ContentView()
}
