//
//  ContentView.swift
//  EggseedApp
//
//  Created by Leo Dion on 3/23/21.
//

import SwiftUI

struct ContentView: View {
  @State var currentPage : Int = 0
  @State var presentNewTemplate : Bool = false
  
    var body: some View {
      Button("Start Template") {
        self.presentNewTemplate = true
      }.sheet(isPresented: self.$presentNewTemplate, content: {
        
        PageView(pages: [TemplateSelectionWindowView(currentPage: self.$currentPage),TemplateSelectionWindowView(currentPage: self.$currentPage)], currentPage: $currentPage).frame(width: 700, height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).fixedSize()
      })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView(presentNewTemplate: true)
    }
}
