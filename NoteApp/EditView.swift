//
//  EditView.swift
//  NoteApp
//
//  Created by Brent Hoozee on 04/02/2025.
//

import SwiftUI

struct EditView: View {
    @Binding var task: String
    
    var body: some View {
        VStack {
            TextField("Edit task", text: $task)
                .padding()
                .textFieldStyle(.roundedBorder)
                .font(.title)
            
            Spacer()
        }
        .navigationTitle("Edit Task")
        .padding()
    }
}
