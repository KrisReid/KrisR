//
//  PointsOfInterest.swift
//  KrisR
//
//  Created by Kris Reid on 19/06/2021.
//

import Foundation

struct PointsOfInterest: Identifiable {
    var id = UUID().uuidString
    let name: String
    let latitude, longitude: Double
}
