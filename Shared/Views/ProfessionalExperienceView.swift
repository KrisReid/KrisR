//
//  ProfessionalExperienceView.swift
//  KrisR
//
//  Created by Kris Reid on 16/06/2021.
//

import SwiftUI

struct ProfessionalExperienceView: View {
    
    let professionals: [Professional] = [
        .init(image: "mediamath", position: "Senior Technical Program Manager", dates: "May 2018 - Present", location: "Blackfriars, London, UK", description: "lekfnlen lksnflkn kneln knelfkn knlwkenfk nlk nlkn ln lknelngl knlk nlk nlk nglkgnl knglgkn lk nlkewnlwkfejnl wjn jnjn jgnk jn f")
    ]

    var body: some View {
        VStack {
            HStack {
                Text("Professional Experience")
                    .font(.system(size: 18, weight: .light))
                Spacer()

            }
            .padding(.top)
            
            ScrollView (.horizontal, showsIndicators: false) {
                HStack (spacing: 16) {
                    ForEach(professionals, id: \.self) { professional in
                        professionalTile(professional: professional)
                    }
                }
                .padding(.bottom)
            }
        }
    }
}

struct professionalTile: View {
    
    let professional: Professional
    
    var body: some View {
        
        VStack (alignment: .leading) {
            HStack {
                Spacer()
                Image(professional.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width:100)
                    .clipped()
                    .cornerRadius(5)
                    .padding(.leading, 6)
                    .padding(.vertical, 6)
            }
            .padding(.bottom)
            
            VStack (alignment: .leading, spacing: 4) {
                Text(professional.position)
                Text(professional.dates)
                Text(professional.location)
            }
            .padding(.bottom)
            
            Text(professional.description)
            
            Spacer()
        }
        .font(.system(size: 13, weight: .light))
        .padding()
        .frame(width: 260, height: 380)
        .asTile()
        
    }
}


struct ProfessionalExperienceView_Previews: PreviewProvider {
    static var previews: some View {
        ProfessionalExperienceView()
    }
}
