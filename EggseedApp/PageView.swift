//
//  PageView.swift
//  EggseedApp
//
//  Created by Leo Dion on 3/24/21.
//

import SwiftUI
struct PageView<Page: View>: View {
    var pages: [Page]
  @Binding private var currentPage : Int
  
  init(pages: [Page], currentPage: Binding<Int>) {
    self.pages = pages
    self._currentPage = currentPage
  }

    var body: some View {
      PageViewController(pages: pages, currentPage: $currentPage)
        
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
      PageView(pages: [TemplateSelectionWindowView(currentPage: .constant(1))], currentPage : .constant(1)).frame(width: 700, height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).fixedSize()
           
    }
}
