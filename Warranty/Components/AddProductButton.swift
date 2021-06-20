//
//  Button.swift
//  Warranty
//
//  Created by William Scholder on 20.06.21.
//

import SwiftUI

struct AddProductView: View {
    let width: CGFloat
    let height: CGFloat
    let text: String
    var body: some View {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color("Dracula-Pink"), Color("Dracula-Purple")]), startPoint: /*@START_MENU_TOKEN@*/.topLeading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.bottomTrailing/*@END_MENU_TOKEN@*/)
                    .cornerRadius(15)
                    .frame(width: width, height: height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .shadow(color: Color("Dracula-Pink").opacity(0.3), radius: 7, x: -1, y: -1)
                    .shadow(color: Color("Dracula-Purple").opacity(0.3), radius: 7, x: 1, y: 1)
                VStack(alignment: .leading) {
                    Text(text)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("Dracula-Background"))
                }
            }
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        AddProductView(width: 150, height: 150, text: "Add a new Product 🖲")
    }
}
