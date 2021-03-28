//
//  PageView.swift
//  EggseedApp
//
//  Created by Leo Dion on 3/24/21.
//

import SwiftUI
struct PageView: View {
    var pages: [AnyView]
  @Binding private var currentPage : Int
  
  init<V0: View>(
    currentPage: Binding<Int>,
          @ViewBuilder content: @escaping () -> V0
      ) {
    self._currentPage = currentPage
          let cv = content()
    pages = [AnyView(cv)]
      }
  
  init<V0: View, V1: View>(
    currentPage: Binding<Int>,
          @ViewBuilder content: @escaping () -> TupleView<(V0, V1)>
      ) {
    self._currentPage = currentPage
          let cv = content().value
    pages = [AnyView(cv.0), AnyView(cv.1)]
      }

      init<V0: View, V1: View, V2: View>(
        currentPage: Binding<Int>,
          @ViewBuilder content: @escaping () -> TupleView<(V0, V1, V2)>) {
        self._currentPage = currentPage
          let cv = content().value
        pages = [AnyView(cv.0), AnyView(cv.1), AnyView(cv.2)]
      }

      init<V0: View, V1: View, V2: View, V3: View>(
        currentPage: Binding<Int>,
          @ViewBuilder content: @escaping () -> TupleView<(V0, V1, V2, V3)>) {
        self._currentPage = currentPage
          let cv = content().value
        pages = [AnyView(cv.0), AnyView(cv.1), AnyView(cv.2), AnyView(cv.3)]
      }
  

    var body: some View {
      PageViewController(pages: pages, currentPage: $currentPage)
        
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
      PageView(currentPage: .constant(1)) {
        TemplateSelectionWindowView()
      }.frame(width: 700, height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).fixedSize()
           
    }
}
