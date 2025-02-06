//
//  EditView.swift
//  NoteApp
//
//  Created by Brent Hoozee on 04/02/2025.
//
import SwiftUI

struct EditView: View {
    var task: String
    @State var newTask = ""
    
    var body: some View {
        VStack {
            TextField("\(task)", text: $newTask)
                .padding()
                .textFieldStyle(.roundedBorder)
                .font(.title)
            
            Spacer()
        }
        .navigationTitle("Edit Task")
        .padding()
    }
}
