//
//  ContentView.swift
//  Warranty
//
//  Created by William Scholder on 19.06.21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    
    var body: some View {
        GeometryReader { geo in
            NavigationView {
                ScrollView {
                    VStack {
                        Button(action: {}, label: {
                            AddProductView(width: geo.size.width / 1.2, height: 100, text: "Register a new Product 🖥")
                        })
                        .padding()
                        DraculaDivider(width: geo.size.width / 1.2)
                        ForEach(0..<15) { _ in 
                            AddProductView(width: geo.size.width / 1.2, height: 100, text: "Register a new Product 🖥")
                        }
                        Spacer()
                        
                    }.frame(width: geo.size.width)
                    
                }
                .background(Color("Dracula-Background").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
                
                .navigationTitle("Warranty")
                .navigationBarTitleDisplayMode(.automatic)
            }
            
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
