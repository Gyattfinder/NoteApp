//
//  ContentView.swift
//  NoteApp
//
//  Created by Brent Hoozee on 23/01/2025.
//

import SwiftUI

class NotesView: ObservableObject {
    @Published var list: [String] = []
    @Published var editMode: Bool = false
    
    func addNote(_ note: String) {
        if !note.isEmpty {
            list.append(note)
        }
    }
    
    func deleteItem(at offsets: IndexSet) {
        list.remove(atOffsets: offsets)
    }
    
    func toggleEditMode() {
        editMode.toggle()
    }
}

struct ContentView: View {
    @State private var item: String = ""
    @ObservedObject var viewModel = NotesView()
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    TextField("Add note", text: $item)
                        .padding(.horizontal)
                        .padding(.vertical)
                        .cornerRadius(20)
                        .foregroundColor(.black)
                        .textFieldStyle(.roundedBorder)
                    
                    Button(action: {
                        viewModel.addNote(item)
                        item = ""
                    }, label: {
                        Text("+")
                            .padding(.horizontal, 20)
                            .padding(.vertical, 15)
                            .fontWeight(.bold)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(100)
                    })
                }
                
                List {
                    ForEach(viewModel.list, id: \.self) { item in
                        
                        NavigationLink(destination: EditView(task: item)) {
                            Text(item)
                        }
                    }
                    .onDelete(perform: viewModel.deleteItem)
                    
                    .onMove(perform: move)
                }
                
                Spacer()
            }
            .navigationTitle("Notes")
            .toolbar {
                
                EditButton()
            }
            .padding()
        }
    }
    
    
    func move(from source: IndexSet, to destination: Int) {
        viewModel.list.move(fromOffsets: source, toOffset: destination)
    }
}
#Preview {
    ContentView()
}
