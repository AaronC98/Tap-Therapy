//
//  OnboardingCardView.swift
//  TapTherapy
//
//  Created by Aaron  on 21/10/2020.
//

import SwiftUI

struct OnboardingCardView: View {
    
    @State private var isAnimating: Bool = false
    var card:onboardingCard
    
    var body: some View {
        VStack {
            
            Image(card.image)
                .resizable()
                .scaledToFit()
                .padding()
                .scaleEffect(isAnimating ? 1.0: 0.6)
                .frame(width: 800, height: 800, alignment: .center)
                
            
            Text(card.title)
                .font(.system(size: 25, weight: .bold, design: .rounded))
                .padding(.bottom, 20)
            
            Text(card.description)
                .font(.system(size: 17, weight: .medium, design: .rounded))
                .multilineTextAlignment(.center)
                .padding()
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                //changes state to true
                isAnimating = true
            }
        }
        .padding()
    }
}

struct OnboardingCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingCardView(card: cards[0])
            .preferredColorScheme(.dark)
    }
}
