//
//  ContentView.swift
//  EggseedApp
//
//  Created by Leo Dion on 3/23/21.
//

import SwiftUI

struct ContentView: View {
  @State var presentNewTemplate : Bool = false
    var body: some View {
      VStack{
      Button("Start Template") {
        self.presentNewTemplate = true
      }.sheet(isPresented: $presentNewTemplate, content: {
        
        TemplateSelectionWindowView()
      }).padding(100)
      }.frame(width: 1000, height: 1000, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
