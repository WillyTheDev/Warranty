//
//  DraculaCard.swift
//  Warranty
//
//  Created by William Scholder on 20.06.21.
//

import SwiftUI

struct DraculaCard: View {
    let width: CGFloat
    let height: CGFloat
    let imageName: String
    let shopName: String
    let endDate: String
    let productName: String
    var body: some View {
        VStack(alignment: .leading) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: width, height: height)
                .clipped()
            Text(productName)
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundColor(Color("Dracula-Text-Color"))
                .padding()
            Text("End date: \(endDate)")
                .foregroundColor(Color("Dracula-Text-Color"))
                .padding()
            Button(action: {}, label: {
                Text("Show more")
                    .foregroundColor(Color("Dracula-Pink"))
            })
            .padding()
            
        }
        .cornerRadius(8)
        .background(Color("Dracula-Background"))
        .cornerRadius(8)
        .shadow(color: Color("Dracula-Purple").opacity(0.5), radius: 5, x: -4, y: 4)
        .shadow(color: Color("Dracula-Pink").opacity(0.5), radius: 5, x: 4, y: 4)
        .padding()
    }
}

struct DraculaCard_Previews: PreviewProvider {
    static var previews: some View {
        DraculaCard(width: 150, height: 100, imageName: "Product", shopName: "Melectronics", endDate: "31.09.2022", productName: "Camera")
    }
}
