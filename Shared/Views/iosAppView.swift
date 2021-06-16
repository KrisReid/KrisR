//
//  iosAppView.swift
//  KrisR
//
//  Created by Kris Reid on 14/06/2021.
//


import SwiftUI

struct iosAppView: View {
    
    let applications: [Application] = [
        .init(image: "tbg", name: "The Beautiful Game", video: "", github: "https://github.com/KrisReid/TBG2.0"),
        .init(image: "travelDiscovery", name: "Travel Discovery", video: "", github: "https://github.com/KrisReid/TravelDiscovery"),
        .init(image: "fakinder", name: "Fake Tinder", video: "", github: "https://github.com/KrisReid/TravelDiscovery"),
        .init(image: "emirates", name: "Emirates Ticket Concept", video: "", github: "https://github.com/KrisReid/TravelDiscovery"),
        .init(image: "aroura", name: "Aurora (Messaging App", video: "", github: "https://github.com/KrisReid/Aurora")
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("Built Apps")
                    .font(.system(size: 18, weight: .light))
                Spacer()

            }
//            .padding(.horizontal)
            .padding(.top)
            
            ScrollView (.vertical, showsIndicators: false) {
                VStack (spacing: 8) {
                    ForEach(applications, id: \.self) { application in
                        ApplicationTile(application: application)
                            .foregroundColor(Color(.label))
                    }
                }
//                .padding(.horizontal)
                .padding(.bottom)
            }
            
        }
    }
}


struct ApplicationTile: View {
    
    let application: Application
    
    var body: some View {
        HStack(spacing: 16) {
            Image(application.image)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
                .clipped()
                .cornerRadius(5)
                .padding(.leading, 6)
                .padding(.vertical, 6)
            
            Text(application.name)
                .font(.system(size: 12, weight: .semibold))
            
            Spacer()
            
            HStack (spacing: 10){
                Image("github")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                
                Image(systemName: "video.circle")
                    .font(.system(size: 24, weight: .light))
            }


            
        }
        .padding(.trailing)
        .frame(width: .infinity)
        .asTile()
    }
}


struct iosAppView_Previews: PreviewProvider {
    static var previews: some View {
        iosAppView()
    }
}
