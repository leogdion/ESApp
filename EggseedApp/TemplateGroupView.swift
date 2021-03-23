//
//  TemplateGroupView.swift
//  EggseedApp
//
//  Created by Leo Dion on 3/23/21.
//

import SwiftUI

struct TemplateGroupView: View {
  let group : TemplateGroup
  let geometry: GeometryProxy
  func rows (from geometry: GeometryProxy, forCount count: Int) -> [GridItem] {
    let itemsPerRow = Int(geometry.size.width / 120.0)
    let rowCount = max(itemsPerRow < 1 ? 1 : count / itemsPerRow, 1)
    return .init(repeating: GridItem(.fixed(100)), count: rowCount)
  }
    var body: some View {
      
        Section(header: Text(group.label)){
          LazyHGrid(
            rows: rows(from: self.geometry, forCount: group.templates.count)
          ) {
            ForEach(group.templates, content: TemplateView.init(template:))
            
          }
        }
      
     
    }
}

struct TemplateGroupView_Previews: PreviewProvider {
    static var previews: some View {
      GeometryReader{ (geometry) in
      List{
        TemplateGroupView(group: Template.groups.first!, geometry: geometry)
      }
      }
    }
}
