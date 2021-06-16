//
//  PersonalDetails.swift
//  KrisR
//
//  Created by Kris Reid on 16/06/2021.
//

import SwiftUI

struct PersonalDetails: View {
    var body: some View {
        
        let contacts: [Contact] = [
            .init(image: "phone"),
            .init(image: "envelope"),
            .init(image: "location")
        ]
        
        
        HStack (spacing: 30) {
            ForEach(contacts, id: \.self) { contact in
                Hex()
                    .stroke(Color(#colorLiteral(red: 0.3694255948, green: 0.49775666, blue: 0.5511936545, alpha: 1)), lineWidth: 1)
            }
            .frame(width: 90, height: 80)
        }
        
    }
}

struct PersonalDetails_Previews: PreviewProvider {
    static var previews: some View {
        PersonalDetails()
    }
}
