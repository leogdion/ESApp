//
//  ContentView.swift
//  EggseedApp
//
//  Created by Leo Dion on 3/21/21.
//

import SwiftUI

struct TemplateSelectorView: View {
  
  @Binding var selectedTemplate : UUID?
  @Binding var isNextEnabled : Bool
  var body: some View {
    GeometryReader(content: { geometry in
          List{
            ForEach(
              Template.groups) { group in
              TemplateGroupView(selectedTemplate: $selectedTemplate, group: group).listRowInsets(.init())
            }.onChange(of: selectedTemplate, perform: { value in
              self.isNextEnabled = value != nil
            })
          }
    })
  }
}
  
  struct TemplateSelectorView_Preview: PreviewProvider {
    static var previews: some View {
      TemplateSelectorView(selectedTemplate: .constant(nil), isNextEnabled: .constant(true))
    }
  }
