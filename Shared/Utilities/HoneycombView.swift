//
//  Honeycomb.swift
//  KrisR
//
//  Created by Kris Reid on 14/06/2021.
//

import SwiftUI

struct HoneycombView: View {
    var body: some View {
        HStack {
            HexiLine(primaryHex: false)
                .offset(x: 0, y: 145)
            HexiLine(primaryHex: false)
                .offset(x: 0, y: 185)
            HexiLine(primaryHex: true)
                .offset(x: 0, y: 225)
            HexiLine(primaryHex: false)
                .offset(x: 0, y: 345)
            HexiLine(primaryHex: false)
                .offset(x: 0, y: 305)
            HexiLine(primaryHex: false)
                .offset(x: 0, y: 265)
            HexiLine(primaryHex: false)
                .offset(x: 0, y: 145)
        }
        .frame(width: 200, height: .infinity, alignment: .center)
    }
}

struct HexiLine: View {
    
    @State private var degrees: Double = 0
    @State private var flipped: Bool = false

    private let animation = Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true)
    
    let primaryHex: Bool
    
    var body: some View {
        VStack {
            ForEach(0..<7, id: \.self) { a in
                if a == 4 && primaryHex {
                    Hex()
                        .stroke(Color(#colorLiteral(red: 0.07751391083, green: 0.08252384514, blue: 0.09950902313, alpha: 1)), lineWidth: 1.0)
                        .frame(width: 62, height: 72)
                        .background(Hex().foregroundColor(flipped ? Color(#colorLiteral(red: 0.3851488233, green: 0.3802543879, blue: 0.3716388941, alpha: 1)) : Color(#colorLiteral(red: 0.3694255948, green: 0.49775666, blue: 0.5511936545, alpha: 1))))
                        .rotation3DEffect(
                            .degrees(degrees), axis: (x: 1.0, y: 0.0, z: 0.0)
                        )
                        .onAppear {
                            withAnimation (self.animation) {
                                degrees += 360
                                flipped.toggle()
                            }
                        }
                } else {
                    Hex()
                        .stroke(Color(#colorLiteral(red: 0.07751391083, green: 0.08252384514, blue: 0.09950902313, alpha: 1)), lineWidth: 1.0)
                        .frame(width: 62, height: 72)
                        .background(Hex().foregroundColor(Color(#colorLiteral(red: 0.3694255948, green: 0.49775666, blue: 0.5511936545, alpha: 1))))
                }
            }
        }
    }
}

struct Hex: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: 20, y: 0))
        path.addLine(to: CGPoint(x: 70, y: 0))
        path.addLine(to: CGPoint(x: 90, y: 40))
        path.addLine(to: CGPoint(x: 70, y: 80))
        path.addLine(to: CGPoint(x: 20, y: 80))
        path.addLine(to: CGPoint(x: 0, y: 40))
        path.addLine(to: CGPoint(x: 20, y: 0))
        
        return path
    }
}

struct Honeycomb_Previews: PreviewProvider {
    static var previews: some View {
        HoneycombView()
    }
}
