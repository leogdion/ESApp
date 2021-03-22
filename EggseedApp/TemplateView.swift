//
//  TemplateView.swift
//  EggseedApp
//
//  Created by Leo Dion on 3/21/21.
//

import SwiftUI

struct TemplateView: View {
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
              Image(systemName: "cloud.fill").resizable()
                .aspectRatio(contentMode: .fit)
                .padding(8.0).frame(width: length, height: length, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).offset(x: offsetX, y: offsetY)
              
            }
          })
        }
        Text("Vapor Server-Side Application")
          .font(.subheadline)
          .multilineTextAlignment(.center)
          .padding(.top, 4.0)
          .layoutPriority(1)
      }
    }
}

struct TemplateView_Previews: PreviewProvider {
    static var previews: some View {
      TemplateView().previewLayout(.fixed(width: 120, height: 100))
    }
}
