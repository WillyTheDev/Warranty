//
//  DraculaDivider.swift
//  Warranty
//
//  Created by William Scholder on 20.06.21.
//

import SwiftUI

struct DraculaDivider: View {
    let width: CGFloat
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color("Dracula-Pink"), Color("Dracula-Purple")]), startPoint: /*@START_MENU_TOKEN@*/.topLeading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.bottomTrailing/*@END_MENU_TOKEN@*/)
            .frame(width: width, height: 8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .cornerRadius(8)
            .padding()
    }
}

struct DraculaDivider_Previews: PreviewProvider {
    static var previews: some View {
        DraculaDivider(width: 150)
    }
}
