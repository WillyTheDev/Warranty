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
                    
                }
                .frame(width: geo.size.width)
                .background(Color("Dracula-Background"))
                .navigationBarTitle("Warranty", displayMode: .large)
            }
            
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
