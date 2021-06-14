//
//  ContentView.swift
//  Shared
//
//  Created by Kris Reid on 14/06/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            HoneycombView()
            
            ScrollView {
                Text("Kris Reid")
                
                //Add mass padding at the bottom of this

            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
