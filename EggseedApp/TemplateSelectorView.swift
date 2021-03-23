//
//  ContentView.swift
//  EggseedApp
//
//  Created by Leo Dion on 3/21/21.
//

import SwiftUI

struct TemplateSelectorView: View {
  var body: some View {
    GeometryReader(content: { geometry in
          List{
            ForEach(
              Template.groups) { group in
              TemplateGroupView(group: group).listRowInsets(.init())
            }
          }
    })
  }
}
  
  struct TemplateSelectorView_Preview: PreviewProvider {
    static var previews: some View {
      TemplateSelectorView()
    }
  }
