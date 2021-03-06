//
//  iosAppView.swift
//  KrisR
//
//  Created by Kris Reid on 14/06/2021.
//


import SwiftUI

struct iosAppView: View {
    
    let applications: [Application] = [
        .init(image: "tbg", name: "The Beautiful Game", video: "https://www.youtube.com/watch?v=S-ng3YxPFJU", github: "https://github.com/KrisReid/TBG2.0"),
        .init(image: "travelDiscovery", name: "Travel Discovery", video: "https://youtu.be/8U1mz058teI", github: "https://www.letsbuildthatapp.com/course/SwiftUI%20Mastery%20Travel%20Discovery"),
        .init(image: "fakinder", name: "Fake Tinder", video: "https://www.youtube.com/watch?v=VlYLRWoIT3U", github: "https://github.com/KrisReid/Fakinder"),
        .init(image: "emirates", name: "Emirates Ticket Concept", video: "https://youtu.be/2nctzxUanVM", github: "https://github.com/KrisReid/Plane-Ticket-Concept"),
        .init(image: "aroura", name: "Aurora (Messaging App", video: "dd", github: "https://github.com/KrisReid/Aurora")
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("Built Apps")
                    .font(.system(size: 18, weight: .light))
                Spacer()
            }
            ScrollView (.vertical, showsIndicators: false) {
                VStack (spacing: 8) {
                    ForEach(applications, id: \.self) { application in
                        ApplicationTile(application: application)
                            .foregroundColor(Color(.label))
                    }
                }
            }
        }
        .padding()
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
                Link(destination: URL(string: application.github)!) {
                    Image("github")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                }
                
                Link(destination: URL(string: application.video)!) {
                    Image(systemName: "video.circle")
                        .font(.system(size: 24, weight: .light))
                }
            }
        }
        .padding(.trailing)
        .asTile()
    }
}

struct iosAppView_Previews: PreviewProvider {
    static var previews: some View {
        iosAppView()
    }
}
