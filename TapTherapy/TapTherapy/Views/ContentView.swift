//
//  ContentView.swift
//  TapTherapy
//
//  Created by Aaron  on 15/10/2020.
//

import SwiftUI

var cards:[onboardingCard] = [
    
    onboardingCard(image: "IllustrationOne", title: "Create Groups", description: "You can create a group or multiple groups to store the shortcuts you create. Groups help keep your shortcuts organised."),
    
    onboardingCard(image: "IllustrationTwo", title: "Create Shortcuts", description: "Asign a photo, link, document or even text snippet to a shortcut ou create. Access the shortcuts you create on the pasted keyboard at any time."),
    
    onboardingCard(image: "IllustrationThree", title: "Access Anytime", description: "Paste your content in anytime, navigate to the shortcuts keyboard and tap a shortcut that you want to paste")
                   
]


struct ContentView: View {
    
    @State var isOnboardingFinished = false
    
    var body: some View {
        
        Group {
            if isOnboardingFinished {
                Home()
                    .transition(AnyTransition.slide)
                    .animation(Animation.easeInOut(duration: 1))
            }
            else {
                PageView(cards.map { OnboardingCardView(card: $0) }, isOnboardingFinished: $isOnboardingFinished)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
