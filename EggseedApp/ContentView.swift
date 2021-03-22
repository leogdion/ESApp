//
//  ContentView.swift
//  EggseedApp
//
//  Created by Leo Dion on 3/21/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      List{
        Section(header: Text("Application")){
          LazyHGrid(rows: [GridItem(.flexible(minimum: 86, maximum: 86))], content: {
            TemplateView()
            TemplateView()
            TemplateView()
            TemplateView()
          })
        }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
