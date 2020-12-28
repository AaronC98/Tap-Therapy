//
//  FreePlayControl.swift
//  TapTherapy
//
//  Created by Aaron  on 28/10/2020.
//

import SwiftUI

struct FreePlayControl : UIViewRepresentable {
    
    @Binding var page : Int
    
    func makeUIView(context: Context) -> UIPageControl {
        
        let view = UIPageControl()
        view.currentPageIndicatorTintColor = .black
        view.pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
        view.numberOfPages = data.count
        return view
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        
        //Update page indicator on change
        
        DispatchQueue.main.async {
            
            uiView.currentPage = self.page
        }
    }
}


struct PageControl_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
