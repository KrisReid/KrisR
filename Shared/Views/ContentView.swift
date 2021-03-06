//
//  ContentView.swift
//  Shared
//
//  Created by Kris Reid on 14/06/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    HoneycombView()

                    Text("Kris Reid")
                        .font(.system(size: 64, weight: .light))
                        .padding(.top, 60)
                        .offset(y: -570)
                    
                    VStack {
                        PersonalDetailsView()
                        EducationsView()
                        ProfessionalExperienceView()
                        iosAppView()
                    }
                    .padding(.top)
                    .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
