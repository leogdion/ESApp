//
//  ContentView.swift
//  EggseedApp
//
//  Created by Leo Dion on 3/21/21.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    GroupBox{
    GeometryReader(content: { geometry in
          List{
            ForEach(
              Template.groups) { group in
              TemplateGroupView(group: group, geometry: geometry)
            }
          }
    })
    }.padding(40)
  }
}
  
  struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
    }
  }
