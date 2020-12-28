//
//  FreePlayCardView.swift
//  TapTherapy
//
//  Created by Aaron  on 28/10/2020.
//

import SwiftUI

struct Card : View {
    
    @Binding var page : Int
    var width : CGFloat
    var data : Type
    
    var body: some View{
        
        VStack{
            VStack{
                Text(self.data.name)
                    .font(.system(size: 80))
                    .fontWeight(.bold)
                    .padding(.top,20)
                
                Spacer(minLength: 0)
                
                Image(self.data.image)
                    .resizable()
                    .frame(width: self.width - (self.page == self.data.id ? 100 : 150), height: (self.page == self.data.id ? 250 : 200))
                    .cornerRadius(20)
                
                Spacer()
                
                Text(self.data.description)
                    .foregroundColor(.gray)
                    .padding(.vertical)
                    .font(.system(size: 40))
                
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 25)
            .background(Color.white)
            .cornerRadius(20)
            .padding(.top, 25)
            .padding(.vertical, self.page == data.id ? 0 : 25)
            .padding(.horizontal, self.page == data.id ? 0 : 25)
            
        }
        .frame(width: self.width)
        .animation(.default)
    }
}

var data = [
    
    Type(id: 0, name: "Fast Tap", description: "Tap the button as many times as you can.", image: "IllustrationOne"),
    
    Type(id: 1, name: "Card Match", description: "Pair up the cards.", image: "IllustrationTwo"),
    
]

struct Type : Identifiable {
    
    var id : Int
    var name : String
    var description : String
    var image : String
}


