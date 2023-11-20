//
//  EditingView.swift
//  FakePages
//
//  Created by Claudia De Luca on 20/11/23.
//

import SwiftUI
import SwiftData

struct EditingView: View {
    
    @Bindable var text: DataText
   
    var body: some View {
        VStack{
            TextEditor(text: $text.editedText)
                .scrollContentBackground(.hidden)
                .background(Color.white)
                .foregroundStyle(.black)
                .frame(height: 600)
                
        }.padding()
            .foregroundStyle(.primary)
            .toolbar(content: showTBLeading)
            .background(Color.secondary.opacity(0.1))
    }
    
    func showTBLeading() -> ToolbarItem<Void, some View> {
        return ToolbarItem() {
            HStack(alignment: .center, spacing: 150){
                
                HStack{
                    Button(action: {
                        print("ciao")
                    }, label: {
                        Label("Share" , systemImage: "square.and.arrow.up")
                            .labelStyle(.iconOnly)
                    })
                    
                    Button(action: {
                        print("ciao")
                    }, label: {
                        Label("Insert", systemImage: "plus")
                            .labelStyle(.iconOnly)
                    })
                    
                    Button(action: {
                        print("ciao")
                    }, label: {
                        Label("Previous action", systemImage: "arrow.uturn.backward.circle")
                            .labelStyle(.iconOnly)
                    }).disabled(true)
                    
                    Button(action: {
                        print("ciao")
                    }, label: {
                        Label("Edit", systemImage: "paintbrush")
                            .labelStyle(.iconOnly)
                    })
                    
                    Button(action: {
                        print("ciao")
                    }, label: {
                        Label("Menu", systemImage: "ellipsis.circle")
                            .labelStyle(.iconOnly)
                    })
                }
            }
        }
    }
    
}

#Preview {
    do {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: DataText.self, configurations: config)
        let example = DataText(editedText: "Test")
        return EditingView(text: example)
            .modelContainer(container)
    } catch {
        fatalError("Failed to create model container. ")
    }
}
