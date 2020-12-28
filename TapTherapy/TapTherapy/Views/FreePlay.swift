//
//  FreePlay.swift
//  TapTherapy
//
//  Created by Aaron  on 21/10/2020.
//

import SwiftUI

struct FreePlay: View {
    
    @State var page = 0
    
    var body: some View {
        Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1))
            .ignoresSafeArea() // Ignore just for the color
            .overlay(
                VStack(spacing: 20) {
                    Text("Free Play")
                        .font(.system(size: 120))
                        .foregroundColor(.white)
                        .padding(.top, 40)
                    
                    
                    GeometryReader{g in
                        Carousel(width: UIScreen.main.bounds.width, page: self.$page, height: g.frame(in: .global).height)
                    }
                    
                    FreePlayControl(page: self.$page)
                        .padding(.top, 20)
                    
                
                })
            
        
        
        
    }
}

struct FreePlay_Previews: PreviewProvider {
    static var previews: some View {
        FreePlay()
    }
}
