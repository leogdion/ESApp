//
//  ContentView.swift
//  EggseedApp
//
//  Created by Leo Dion on 3/23/21.
//

import SwiftUI

struct ContentView: View {
  @State var presentNewTemplate : Bool = false
  @State var selectedTemplate : UUID? = nil
    var body: some View {
      Button("Start Template") {
        self.presentNewTemplate = true
      }.sheet(isPresented: self.$presentNewTemplate, content: {
        TemplateSelectionWindowView(isShown: $presentNewTemplate, selectedTemplate: $selectedTemplate)
      })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView(presentNewTemplate: true)
    }
}
