//
//  PageView.swift
//  EggseedApp
//
//  Created by Leo Dion on 3/24/21.
//

import SwiftUI
struct PageView: View {
    var pages: [PageMessagedView]
  @Binding private var currentPage : Int
  @Binding private var pageMessage : String
  init<V0: View>(
    currentPage: Binding<Int>,
    pageMessage: Binding<String>,
          @ViewBuilder content: @escaping () -> V0
      ) {
    self._currentPage = currentPage
    self._pageMessage = pageMessage
          let cv = content()
    pages = [PageMessagedView.wrap(cv)]
      }
  
  init<V0: View, V1: View>(
    currentPage: Binding<Int>,
    pageMessage: Binding<String>,
          @ViewBuilder content: @escaping () -> TupleView<(V0, V1)>
      ) {
    self._currentPage = currentPage
    self._pageMessage = pageMessage
          let cv = content().value
    pages = [PageMessagedView.wrap(cv.0), PageMessagedView.wrap(cv.1)]
      }

      init<V0: View, V1: View, V2: View>(
        currentPage: Binding<Int>,
        pageMessage: Binding<String>,
          @ViewBuilder content: @escaping () -> TupleView<(V0, V1, V2)>) {
        self._currentPage = currentPage
        self._pageMessage = pageMessage
          let cv = content().value
        pages = [PageMessagedView.wrap(cv.0), PageMessagedView.wrap(cv.1), PageMessagedView.wrap(cv.2)]
      }

      init<V0: View, V1: View, V2: View, V3: View>(
        currentPage: Binding<Int>,
        pageMessage: Binding<String>,
          @ViewBuilder content: @escaping () -> TupleView<(V0, V1, V2, V3)>) {
        self._currentPage = currentPage
        self._pageMessage = pageMessage
          let cv = content().value
        pages = [PageMessagedView.wrap(cv.0), PageMessagedView.wrap(cv.1), PageMessagedView.wrap(cv.2), PageMessagedView.wrap(cv.3)]
      }
  

    var body: some View {
      PageViewController(pages: pages, currentPage: $currentPage, pageMessage: $pageMessage)
        
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
      PageView(currentPage: .constant(1), pageMessage: .constant("help")) {
        TemplateSelectionWindowView(isShown: .constant(true), selectedTemplate: .constant(nil))
      }.frame(width: 700, height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).fixedSize()
           
    }
}
