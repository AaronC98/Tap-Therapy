//
//  ContentView.swift
//  TapTherapy
//
//  Created by Aaron  on 15/10/2020.
//

import SwiftUI

var cards:[onboardingCard] = [
    
    onboardingCard(image: "IllustrationOne", title: "Onboarding One", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis et enim sit amet massa imperdiet suscipit eget id est. Aenean efficitur semper malesuada. Aenean sagittis porta ante a lobortis. "),
    
    onboardingCard(image: "IllustrationTwo", title: "Onboarding Two", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis et enim sit amet massa imperdiet suscipit eget id est. Aenean efficitur semper malesuada. Aenean sagittis porta ante a lobortis. "),
    
    onboardingCard(image: "IllustrationThree", title: "Onboarding 3", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis et enim sit amet massa imperdiet suscipit eget id est. Aenean efficitur semper malesuada. Aenean sagittis porta ante a lobortis. ")
                   
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
