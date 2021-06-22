//
//  Education.swift
//  KrisR
//
//  Created by Kris Reid on 16/06/2021.
//

import SwiftUI

struct EducationsView: View {
    
    let educations: [Education] = [
        .init(image: "SAFe5", title: "SAFe5 Agilist", date: "2020", grade: "Pass", cert: "SAFe5_cert"),
        .init(image: "apmg", title: "Agile Project Manager", date: "2018", grade: "Pass", cert: "apmg_cert"),
        .init(image: "psm1", title: "Professional Scrum Master", date: "2015", grade: "Pass", cert: "b"),
        .init(image: "uwe", title: "Business Information Systems", date: "2011", grade: "First", cert: "uwe_cert")
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("Education / Certification")
                    .font(.system(size: 18, weight: .light))
                Spacer()

            }
            .padding(.horizontal)
            .padding(.top)
            
            ScrollView (.horizontal, showsIndicators: false) {
                HStack (spacing: 16) {
                    ForEach(educations, id: \.self) { education in
                        
                        NavigationLink (
                            destination: EducationDetail(education: education),
                            label: {
                                EducationTile(education: education)
                            }
                        )
                    }
                }
                .padding(.bottom)
                .padding(.horizontal)
            }
        }
    }
}

struct EducationTile: View {
    
    let education: Education
    
    var body: some View {
        HStack(spacing: 12) {
            Image(education.image)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
                .clipped()
                .cornerRadius(5)
                .padding(.leading, 6)
                .padding(.vertical, 6)
            
            VStack(alignment: .leading, spacing: 6) {
                Text(education.title)
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundColor(.black)
                HStack {
                    Text(education.date)
                        .foregroundColor(.black)
                    Spacer()
                    Text(education.grade)
                        .foregroundColor(.green)
                }
                .font(.system(size: 12, weight: .light))
            }
            Spacer()
        }
        .frame(width: 230)
        .asTile()
    }
}


struct EducationDetail: View {
    
    let education: Education
    
    var body: some View {
        VStack {
            Image(education.cert)
                .resizable()
                .scaledToFit()
        }
        .ignoresSafeArea()
    }
}


struct EducationView_Previews: PreviewProvider {
    static var previews: some View {
        EducationsView()
        EducationDetail(education: .init(image: "apmg", title: "Agile Project Manager", date: "2018", grade: "Pass", cert: "apmg_cert"))
    }
}
