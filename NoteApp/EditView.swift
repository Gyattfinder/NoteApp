import SwiftUI

struct EditView: View {
    @Binding var task: String  // Bind de taak als een Binding

    var body: some View {
        VStack {
            TextField("Edit task", text: $task)  // Wijzig de taak direct
                .padding()
                .textFieldStyle(.roundedBorder)
                .font(.title)
            
            Spacer()
        }
        .navigationTitle("Edit Task")
        .padding()
    }
}

