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
      Button("Start Template") {
        self.presentNewTemplate = true
      }.sheet(isPresented: self.$presentNewTemplate, content: {
        TemplateSelectionWindowView(isShown: $presentNewTemplate)
      })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView(presentNewTemplate: true)
    }
}
