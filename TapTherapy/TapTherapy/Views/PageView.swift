//
//  PageView.swift
//  TapTherapy
//
//  Created by Aaron  on 21/10/2020.
//

import SwiftUI

struct PageView<Page:View> : View {
    
    var viewControllers:[UIHostingController<Page>]
    @Binding var isOnboardingFinished: Bool
    
    @State var currentPage: Int = 0
    
    init(_ views: [Page], isOnboardingFinished: Binding<Bool>) {
        self.viewControllers = views.map { UIHostingController(rootView: $0) }
        self._isOnboardingFinished = isOnboardingFinished
         }
    
    
    var body: some View {
        VStack {
            PageViewController(controllers: viewControllers, currentPage: $currentPage)
            
            Spacer()
            
            Button(action: {
                if self.currentPage < self.viewControllers.count - 1 {
                    self.currentPage += 1
                }
                else {
                    self.isOnboardingFinished.toggle()
                }
            }) {
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 500, height: 100)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)))
                .overlay(
                    Text(self.currentPage < self.viewControllers.count - 1 ? "Next" : "Continue")
                        .foregroundColor(.white)
                        
                )
            }
            
            PageControl(noOfPages: viewControllers.count, currentPage: $currentPage)
        }
    }
    
    
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(cards.map { OnboardingCardView(card: $0) }, isOnboardingFinished: .constant(false))
    }
}
