//
//  TemplateView.swift
//  EggseedApp
//
//  Created by Leo Dion on 3/21/21.
//

import SwiftUI

struct TemplateGroup : Identifiable {
  let label : String
  let templates : [Template]
  
  var id:  String {
    return self.label
  }
}
struct Template : Identifiable {
  let imageName : String
  let label : String
  let id : UUID = .init()
  
  static let groups : [TemplateGroup] = [
    TemplateGroup(
      label: "Application", templates:
        [
          Template(
            imageName: "001-blood-drop",
            label: "Vapor Server App"
          ),
          Template(
            imageName: "004-lambda",
            label: "AWS Lambda"
          ),
          Template(
            imageName: "006-argument",
            label: "Argument Parser Command"
          ),
          
          Template(
            imageName: "002-command-line",
            label: "Basic Executable"
          ),
          
          
        ]
    ),
    TemplateGroup(label: "Library", templates: [
      Template(
        imageName: "toolbox-3",
        label: "Multiplatform Library"
      )
    ]),
    TemplateGroup(label: "Web Site", templates: [
      
      Template(
        imageName: "015-web-development",
        label: "Publish Static Site"
      ),
      Template(
        imageName: "016-quill",
        label: "Feather CMS"
      )
    ])
  ]
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
  
  
  @Binding var selectedTemplate : UUID?
  
  var isSelected : Bool {
    self.selectedTemplate == self.template.id
  }
  
  let template : Template
  
  var body: some View {
    Button(action: {
      self.selectedTemplate = self.template.id
    }, label: {
      
    VStack{
      ZStack{
        RoundedRectangle(cornerRadius: 8.0).fill(Color.accentColor).aspectRatio(1.0, contentMode: .fit).padding(-8).opacity(isSelected ? 0.5 : 0.0)
        RoundedRectangle(cornerRadius: 8.0).fill(Color.black).aspectRatio(1.0, contentMode: .fit)
        RoundedRectangle(cornerRadius: 8.0).stroke().fill(Color(red: 0.436, green: 0.471, blue: 0.552, opacity: 1.0)).aspectRatio(1.0, contentMode: .fit)
        Image(template.imageName
        ).resizable().foregroundColor(Color(red: 0.818, green: 0.887, blue: 1.0, opacity: 1.0))
        .aspectRatio(contentMode: .fit)
        .padding(10.0)
        .frame(width: 40.0, height: 40.0, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
      }
      ZStack{
        
        RoundedRectangle(cornerRadius: 8.0).fill(Color.accentColor).padding(.horizontal, -4).padding(.vertical, 2).opacity(isSelected ? 1.0 : 0.0)
      Text(template.label)
        .multilineTextAlignment(.center)
        .padding(.vertical, 4.0)
        .layoutPriority(1)
        .foregroundColor(.primary)
      }.frame(height: 40, alignment: .top)
    }.padding(8.0).frame(width: 120, height: 100)
    }).buttonStyle(BorderlessButtonStyle())
  }
}

struct TemplateView_Previews: PreviewProvider {
  static var previews: some View {
    TemplateView(selectedTemplate: .constant(nil), template: Template(imageName: "001-blood-drop", label: "Vapor Server-Side Application")).previewLayout(.fixed(width: 120, height: 100))
  }
}
