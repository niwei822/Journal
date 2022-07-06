//
//  DetailView.swift
//  Journal-SwiftUI
//
//  Created by new on 7/6/22.
//

import SwiftUI

struct DetailView: View {
    var entry: Entry?
    @State var text: String = ""
    @State var entryBodytext: String = "Write something..."
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Title")
        TextField("Placeholder", text: $text)
            
            }.padding()
            
            VStack(alignment: .leading) {
                HStack {
                    Text("Body")
                    Spacer()
                    Button {
                        entryBodytext = ""
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                    }
                }
              
        TextEditor(text: $entryBodytext)
            
            }.padding()
            Spacer()
        
        Button {
            print(text)
            print(entryBodytext)
        } label: {
            
            ZStack {
//                Circle().fill(.teal)
//                    .frame(width: 65, height: 65)
                //very bottom
                Rectangle().fill(.ultraThinMaterial)
                    .cornerRadius(12)
                //very top
                Text("Tap me")
            }
        }.frame(width: UIScreen.main.bounds.width-40, height: 55)

        }
        .navigationTitle("Detail View")
        .onAppear {
            if let entry = entry {
                text = entry.title
                entryBodytext = entry.note
            }
        }
    }
}
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            DetailView()
        }
    }
}
