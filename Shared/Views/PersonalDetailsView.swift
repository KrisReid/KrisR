//
//  PersonalDetails.swift
//  KrisR
//
//  Created by Kris Reid on 16/06/2021.
//

import SwiftUI

struct PersonalDetailsView: View {
    var body: some View {

        HStack (spacing: 30) {
            
            //Phone me
            ZStack {
                Hex()
                    .stroke(Color(#colorLiteral(red: 0.3694255948, green: 0.49775666, blue: 0.5511936545, alpha: 1)), lineWidth: 1)
                
                Button(action: {
                    guard let url = URL(string: "tel://+447515509832") else { return }
                    UIApplication.shared.open(url)
                 }) {
                    Image(systemName: "phone")
                        .font(.system(size: 28, weight: .ultraLight))
                        .foregroundColor(Color(#colorLiteral(red: 0.3694255948, green: 0.49775666, blue: 0.5511936545, alpha: 1)))
                 }
            }
            .frame(width: 90, height: 80)
            
            //Email me
            ZStack {
                Hex()
                    .stroke(Color(#colorLiteral(red: 0.3694255948, green: 0.49775666, blue: 0.5511936545, alpha: 1)), lineWidth: 1)
                
                Button(action: {
                   EmailHelper.shared.sendEmail(subject: "Hey 👋🏻", body: "Ask me a question ...", to: "krisreid_06@hotmail.com")
                 }) {
                    Image(systemName: "envelope")
                        .font(.system(size: 28, weight: .ultraLight))
                        .foregroundColor(Color(#colorLiteral(red: 0.3694255948, green: 0.49775666, blue: 0.5511936545, alpha: 1)))
                 }
            }
            .frame(width: 90, height: 80)
            
            //Locate me
            ZStack {
                Hex()
                    .stroke(Color(#colorLiteral(red: 0.3694255948, green: 0.49775666, blue: 0.5511936545, alpha: 1)), lineWidth: 1)
                
                Button(action: {
                   //Something
                 }) {
                    Image(systemName: "location")
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
