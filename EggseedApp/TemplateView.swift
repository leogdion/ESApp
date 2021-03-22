//
//  TemplateView.swift
//  EggseedApp
//
//  Created by Leo Dion on 3/21/21.
//

import SwiftUI

struct Template {
  let imageName : String
  let label : String
}

/*
001-blood-drop
002-command-line
003-command-line-1
004-lambda
005-logistics
006-argument
007-two-books
008-framework
009-gear
010-tool-box
011-box
012-archive-black-box
013-box-1
014-content
015-web-development
016-quill
*/

struct TemplateView: View {
  let template : Template
    var body: some View {
      VStack{
        ZStack{
        RoundedRectangle(cornerRadius: 8.0).fill(Color.black).aspectRatio(1.0, contentMode: .fit)
        
        RoundedRectangle(cornerRadius: 8.0).stroke().fill(Color.white).aspectRatio(1.0, contentMode: .fit)
          GeometryReader(content: { geometry in
            let length = min(geometry.size.height, geometry.size.width)
            let offsetX = (geometry.size.width - length) / 2.0
            let offsetY = (geometry.size.height - length) / 2.0
            VStack{
              Image(template.imageName
            ).resizable()
                .aspectRatio(contentMode: .fit)
                .padding(8.0).frame(width: length, height: length, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).offset(x: offsetX, y: offsetY)
              
            }
          })
        }
        Text("Vapor Server-Side Application")
          .font(.subheadline)
          .multilineTextAlignment(.center)
          .padding(.vertical, 4.0)
          .layoutPriority(1)
      }.aspectRatio(/*@START_MENU_TOKEN@*/1.5/*@END_MENU_TOKEN@*/, contentMode: .fit).padding(8.0)
    }
}

struct TemplateView_Previews: PreviewProvider {
    static var previews: some View {
      TemplateView(template: Template(imageName: "001-blood-drop", label: "Vapor Server-Side Application")).previewLayout(.fixed(width: 120, height: 100))
    }
}
