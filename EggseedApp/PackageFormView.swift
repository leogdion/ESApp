//
//  PacakgeFormView.swift
//  EggseedApp
//
//  Created by Leo Dion on 3/28/21.
//

import SwiftUI

struct PackageFormView: View {
    var body: some View {
      VStack{
        HStack{
          Spacer()
            Text("Package Name:")
            TextField("", text: .constant("")).frame(width: 235)
          }
        
        HStack{
          Spacer()
            Text("License:")
          Picker("License", selection: .constant("MIT")) {
            Text("MIT")
            Text("Unlicensed")
          }.labelsHidden().frame(width: 235)
          
        }
        
        HStack{
          Spacer()
            Text("Continuous Integration:")
          Menu {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
              Label("GitHub Actions", image: "gear")
            })
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
              Label("Travis CI", image: "gear")
            })
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
              Label("Gitlab CI", image: "gear")
            })
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
              Label("Bitrise", image: "gear")
            })
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
              Label("CircleCI", image: "gear")
            })
          } label: {
            Text("Test, GitHub")
          }.frame(width: 235)
        }
        HStack{
          Spacer()
            Text("Linting & Styling:")
          Menu {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
              Label("SwiftLint", image: "gear")
            })
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
              Label("SwiftFormat", image: "gear")
            })
          } label: {
            Text("SwiftLint, SwiftFormat")
          }.frame(width: 235)
        }
        HStack{
          Spacer()
            Text("CPU Architectures:")
          HStack{
            Toggle("x86", isOn: .constant(true))
            Toggle("armv8", isOn: .constant(true))
            Spacer()
          }.frame(width: 235)
        }
        
        HStack{
          Spacer()
            Text("Platforms:")
          Menu {
            Picker("iOS", selection: .constant("14.0")) {
                Text("14.4")
                Text("14.3")
                Text("14.2")
                Text("14.1")
            }
            Picker("macOS", selection: .constant("14.0")) {
              Text("11.2")
              Text("11.1")
              Text("11.0")
              Text("10.0")
            }
          } label: {
            Text("iOS 14.0, watch 5.5, Ubuntu 20.4")
          }.frame(width: 235)
        }
        
      }.padding(.horizontal, 120)
    }
}

struct PackageFormView_Previews: PreviewProvider {
    static var previews: some View {
      TemplateSelectionWindowView(isShown: .constant(true))
    }
}
