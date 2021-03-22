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
          LazyHGrid(rows: [GridItem(.fixed(100)),GridItem(.fixed(100)),GridItem(.fixed(100)),GridItem(.fixed(100))], content: {
            TemplateView(template: Template(imageName: "001-blood-drop", label: "Vapor Server-Side Application"))
            TemplateView(template: Template(imageName: "001-blood-drop", label: "Vapor Server-Side Application"))
            TemplateView(template: Template(imageName: "001-blood-drop", label: "Vapor Server-Side Application"))
            TemplateView(template: Template(imageName: "001-blood-drop", label: "Vapor Server-Side Application"))
            TemplateView(template: Template(imageName: "001-blood-drop", label: "Vapor Server-Side Application"))
            TemplateView(template: Template(imageName: "001-blood-drop", label: "Vapor Server-Side Application"))
            TemplateView(template: Template(imageName: "001-blood-drop", label: "Vapor Server-Side Application"))
          })
        }
        Section(header: Text("Libraries")){
          LazyHGrid(rows: [GridItem(.fixed(100)),GridItem(.fixed(100)),GridItem(.fixed(100)),GridItem(.fixed(100))], content: {
            TemplateView(template: Template(imageName: "001-blood-drop", label: "Vapor Server-Side Application"))
            TemplateView(template: Template(imageName: "001-blood-drop", label: "Vapor Server-Side Application"))
            TemplateView(template: Template(imageName: "001-blood-drop", label: "Vapor Server-Side Application"))
            TemplateView(template: Template(imageName: "001-blood-drop", label: "Vapor Server-Side Application"))
            TemplateView(template: Template(imageName: "001-blood-drop", label: "Vapor Server-Side Application"))
            TemplateView(template: Template(imageName: "001-blood-drop", label: "Vapor Server-Side Application"))
            TemplateView(template: Template(imageName: "001-blood-drop", label: "Vapor Server-Side Application"))
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
