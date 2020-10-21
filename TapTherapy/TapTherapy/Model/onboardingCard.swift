//
//  onboardingCard.swift
//  TapTherapy
//
//  Created by Aaron  on 21/10/2020.
//

import Foundation

//card struct
struct onboardingCard: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var description: String
}
