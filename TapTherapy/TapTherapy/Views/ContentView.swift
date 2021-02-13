//
//  ContentView.swift
//  TapTherapy
//
//  Created by Aaron  on 15/10/2020.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("whatsNewView") var isWhatsNewShowing = true
    
    var body: some View {
        Text("Hello, world!")
            .sheet(isPresented: $isWhatsNewShowing, content: {
                OnboardingView(isOnboardingShowing: $isWhatsNewShowing)
            })
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
