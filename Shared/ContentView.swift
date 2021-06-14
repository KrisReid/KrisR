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
                    .font(.system(size: 64, weight: .light))
                    .padding(.top, 60)
                    .padding(.bottom, 550)
                
                Text("Helll")

            }
            .padding(.horizontal)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
