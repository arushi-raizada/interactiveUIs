//
//  ContentView.swift
//  interactiveUIs
//
//  Created by Arushi Raizada on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "what is your name?"
    var body: some View {
        VStack {
            Text ("what is your name?")
                .font(.title)
                .foregroundColor(Color.pink)
            TextField("type name here...", text: $name)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .font(.title)
                .border(/*@START_MENU_TOKEN@*/Color.pink/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            Button("enter name") {
                print(name)
                textTitle = "welcome, \(name)!"
            }
            .accentColor(/*@START_MENU_TOKEN@*/.pink/*@END_MENU_TOKEN@*/)
            .buttonStyle(.borderedProminent)
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
