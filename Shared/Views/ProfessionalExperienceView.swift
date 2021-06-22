//
//  ProfessionalExperienceView.swift
//  KrisR
//
//  Created by Kris Reid on 16/06/2021.
//

import SwiftUI

struct ProfessionalExperienceView: View {
    
    let professionals: [Professional] = [
        .init(image: "mediamath", position: "Senior Technical Program Manager", dates: "May 2018 - Present", location: "Blackfriars, London, UK", description:"""
Managing cross functional teams (Engineering, Product, UX, Marketing) to build a single new product that will improve our customers overall experience with MediaMath. We are delivering this by following Lean UX principles.

Built a roadmap and delivered an asset management product for Ops and SREs within MediaMath. The delivery of this product has resulted in numerous benefits, the greatest being asset cost savings both for on-prem assets in Data Centres as well as AWS cost savings.

Worked with engineering teams to eradicate technical debt that had been acquired over previous years so they could deliver with better predictability and quickly adapt to business change. Tools introduced include: CircleCI, Docker, Prometheus, automated tests frameworks (unit and integration) and PagerDuty.
"""),
        .init(image: "tesco", position: "Technical Program Manager", dates: "Sept 2014 - May 2018", location: "Welwyn Garden City, UK", description: """
Responsible for the technical delivery of a new cloud payroll system for all stores (this included a new self-serve colleague mobile app). For this programme, I managed a budget of £6.75m and a tight milestone plan (cost of delay was £10m per year).

Collaborated closely with multiple engineering teams to ensure the delivery of a scalable and secure product to which we could deploy as frequently as desired (CI/CD pipeline that could deploy through environments in under 10 mins).

Managed and prioritised the stories for Technology teams (9 separate product and service teams) to deliver the issues outlined in the Groceries Code Adjudicators (GCA) report that gave Tesco 90 days to resolve. The cost of delay was a fine of up to 1% of turnover.

Recognised there was value to be gained from changing the ways of working from Waterfall to agile (Scrum), resulting in delivering an MVP 2 years faster than the original plan.

Led workshops in Central Europe to start breaking requirements into smaller stories and define and Minimal Viable Product (MVP).
"""),
        .init(image: "tesco", position: "Technology Leadership Graduate Scheme", dates: "Sept 2012 - Sept 2014", location: "Welwyn Garden City, UK", description: """
Built a proof of concept iOS app as part of a small team of three that has since been given to a development team to productionise and put into a pilot.

Led an offshore development team to deliver “range reports” to Tesco so that more detailed ranging information could be used by the commercial teams.

Created a solution to an uploading problem within the Enterprise Data Warehouse (EDW) that I developed and tested with a colleague whilst working in India.
"""),
        .init(image: "andrews", position: "Business Analyst", dates: "June 2011 - Sept 2012", location: "Bristol, UK", description: """
Mapped the business process for the entire AS IS end to end customer and employee journey, and made recommendations on what needed to change to help improve employee productivity and the customer experience.

Designed and created the dashboard for monitoring links, switches, physical and virtual servers, patch panels, SAN’s and UPS’s which aided the technical support team in identifying and resolving problems with the environment.
"""),
        .init(image: "nestle", position: "Information Systems Internship", dates: "June 2009 - June 2010", location: "York, UK", description: "Did stuff in York and Dublin .... it was fun 🥳")
    ]
    

    var body: some View {
        VStack {
            HStack {
                Text("Professional Experience")
                    .font(.system(size: 18, weight: .light))
                Spacer()

            }
            .padding(.top)
            .padding(.horizontal)
            
            ScrollView (.horizontal, showsIndicators: false) {
                HStack (spacing: 16) {
                    ForEach(professionals, id: \.self) { professional in
                        
                        NavigationLink (
                            destination: ProfessionalDetail(professional: professional),
                            label: {
                                ProfessionalTile(professional: professional)
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

struct ProfessionalTile: View {
    
    let professional: Professional
    
    var body: some View {
        
        VStack (alignment: .leading) {
            HStack {
                Spacer()
                Image(professional.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height:40)
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
        .foregroundColor(.black)
        .font(.system(size: 13, weight: .light))
        .padding()
        .frame(width: 290, height: 420)
        .asTile()
    }
}


struct ProfessionalDetail: View {
    
    let professional: Professional
    
    var body: some View {
        
        ScrollView {
            VStack (alignment: .leading, spacing: 10) {
                
                HStack {
                    Spacer()
                    Image(professional.image)
                        .resizable()
                        .scaledToFit()
                        .frame(height:60)
                        .clipped()
                        .padding(.bottom)
                }
                
                Spacer()
                
                Text(professional.position)
                Text(professional.dates)
                Text(professional.location)
                
                Spacer()
                
                Text(professional.description)
                                
            }
            .font(.system(size: 13, weight: .light))
            .padding(.horizontal)
            
        }
    }
}


struct ProfessionalExperienceView_Previews: PreviewProvider {
    static var previews: some View {
        ProfessionalExperienceView()
        ProfessionalDetail(professional: .init(image: "mediamath", position: "Senior Technical Program Manager", dates: "May 2018 - Present", location: "Blackfriars, London, UK", description: """
Managing cross functional teams (Engineering, Product, UX, Marketing) to build a single new product that will improve our customers overall experience with MediaMath. We are delivering this by following Lean UX principles.

Built a roadmap and delivered an asset management product for Ops and SREs within MediaMath. The delivery of this product has resulted in numerous benefits, the greatest being asset cost savings both for on-prem assets in Data Centres as well as AWS cost savings.

Worked with engineering teams to eradicate technical debt that had been acquired over previous years so they could deliver with better predictability and quickly adapt to business change. Tools introduced include: CircleCI, Docker, Prometheus, automated tests frameworks (unit and integration) and PagerDuty.
"""))
    }
}
