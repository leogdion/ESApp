//
//  TemplateGroupView.swift
//  EggseedApp
//
//  Created by Leo Dion on 3/23/21.
//

import SwiftUI

struct TemplateGroupHeaderView : View {
  let label: String
  
  var body: some View {
      VStack(alignment: .leading){
        Rectangle().frame(height: 1, alignment: .leading).foregroundColor(Color(Color.RGBColorSpace.sRGB, white: 1.0/5, opacity: 3.0/5)).offset(x: 0.0, y: -4.0)
        Text(label).font(.system(size: 14)).bold().padding(.vertical, -8.0).offset(x: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/, y: 0.0)
        Rectangle().frame(height: 1, alignment: .leading).foregroundColor(Color(Color.RGBColorSpace.sRGB, white: 1.0/5, opacity:3.0/5)).offset(x: 0.0, y: 4.0)
      }
    
  }
}
struct TemplateGroupView: View {
  let group : TemplateGroup
  func rows (forCount count: Int) -> [GridItem] {
    let itemsPerRow = Int(700 / 120.0)
    let rowCount = max(itemsPerRow < 1 ? 1 : count / itemsPerRow, 1)
    return .init(repeating: GridItem(.fixed(80)), count: rowCount)
  }
    var body: some View {
      
      Section(header: TemplateGroupHeaderView(label: group.label)){
          LazyHGrid(
            rows: rows(forCount: group.templates.count)
          ) {
            ForEach(group.templates, content: TemplateView.init(template:))
            
          }.padding(.top, 4)
      }
      
     
    }
}

struct TemplateGroupView_Previews: PreviewProvider {
    static var previews: some View {
      GeometryReader{ (geometry) in
      List{
        ForEach(Template.groups) { (group) in
          
          TemplateGroupView(group: group)
        }.padding(.horizontal, -8)
//        TemplateGroupView(group: Template.groups.first!, geometry: geometry).listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0)).frame(width: geometry.size.width, alignment: .leading)
//        TemplateGroupView(group: Template.groups[1], geometry: geometry).listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0)).frame(width: geometry.size.width, alignment: .leading)
//      }.listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0)).frame(width: geometry.size.width, alignment: .leading)
      }
    }
    }
}
