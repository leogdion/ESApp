//
//  ContentView.swift
//  EggseedApp
//
//  Created by Leo Dion on 3/21/21.
//

import SwiftUI

struct PrimaryButtonView: NSViewRepresentable {
    typealias NSViewType = PrimaryButton

    let title: String
    let action: () -> Void

    init(_ title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
      
    }

    func makeNSView(context: Context) -> PrimaryButton {
        PrimaryButton(title, action: action)
    }

    func updateNSView(_ nsView: PrimaryButton, context: Context) {
        return
    }
}
class PrimaryButton: NSButton {
    let buttonAction: () -> Void

    init(_ title: String, action: @escaping () -> Void) {
        self.buttonAction = action
        super.init(frame: .zero)
        self.title = title
        self.action = #selector(clickButton(_:))
        bezelStyle = .rounded  //Only this style results in blue tint for button
        isBordered = true
        focusRingType = .none
        keyEquivalent = "\r"
      self.isHighlighted = true
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    @objc func clickButton(_ sender: PrimaryButton) {
        buttonAction()
    }
}

struct TemplateSelectionWindowView: View {
  
  var body: some View {
    VStack(alignment: .leading){
      Text("Choose a template for your new package:")
        
      TemplateSelectorView().border(Color(red: 0.436, green: 0.471, blue: 0.552, opacity: 1.0), width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
      HStack{
        Button(action: {}, label: {
          Text("Cancel").frame(width: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        })
        Spacer()        
        Button(action: {}, label: {
          Text("Previous").frame(width: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        })
        PrimaryButtonView("Next") {
          
        }.frame(width: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

      }.padding(.top, 8.0)
    }.padding(30).frame(width: 700, height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).fixedSize()
  }
}
  
  struct TemplateSelectionWindowView_Previews: PreviewProvider {
    static var previews: some View {
      TemplateSelectionWindowView()
    }
  }
