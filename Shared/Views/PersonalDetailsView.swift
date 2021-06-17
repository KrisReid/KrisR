//
//  PersonalDetails.swift
//  KrisR
//
//  Created by Kris Reid on 16/06/2021.
//

import SwiftUI

struct PersonalDetailsView: View {
    var body: some View {
        
        let contactMethods: [Contact] = [
            .init(image: "phone"),
            .init(image: "envelope"),
            .init(image: "location")
        ]

        HStack (spacing: 30) {
            ForEach(contactMethods, id: \.self) { contactMethod in
                ZStack {
                    Hex()
                        .stroke(Color(#colorLiteral(red: 0.3694255948, green: 0.49775666, blue: 0.5511936545, alpha: 1)), lineWidth: 1)

                    Image(systemName: contactMethod.image)
                        .font(.system(size: 28, weight: .ultraLight))
                        .foregroundColor(Color(#colorLiteral(red: 0.3694255948, green: 0.49775666, blue: 0.5511936545, alpha: 1)))
                }
            }
            .frame(width: 90, height: 80)
        }
        .padding(.vertical, 30)
    }
}

struct PersonalDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalDetailsView()
    }
}
