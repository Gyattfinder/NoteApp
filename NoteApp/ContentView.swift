//
//  ContentView.swift
//  NoteApp
//
//  Created by Brent Hoozee on 23/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var item: String = ""
    var body: some View {
        NavigationStack{
            VStack {
                HStack {
                    TextField("Add note", text: $item).padding(.horizontal).padding(.vertical).cornerRadius(20).foregroundColor(.black).textFieldStyle(.roundedBorder)
                    
                    Button(action: {
                        
                    }, label: {
                        Text("+").padding().fontWeight(.bold).cornerRadius(10).background(.blue).foregroundColor(.white)
                    })
                }
                Spacer()
            }.navigationTitle("Notes")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
