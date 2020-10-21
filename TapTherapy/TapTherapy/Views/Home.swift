//
//  Home.swift
//  TapTherapy
//
//  Created by Aaron  on 21/10/2020.
//

import SwiftUI

struct Home: View {
    var body: some View {
        
        Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1))
                .ignoresSafeArea() // Ignore just for the color
                .overlay(
                    VStack(spacing: 20) {
                        Text("Tap Therapy")
                            .font(.system(size: 120))
                            .foregroundColor(.white)
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Rehab Mode")
                            .foregroundColor(.white)
                                .padding(.vertical, 100)
                                .padding(.horizontal, 180)
                                .background(Color.blue)
                                .cornerRadius(10)
                        })
                        .padding(.vertical, 50)
                        .padding(.horizontal, 50)
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Free Play")
                                .foregroundColor(.white)
                                .padding(.vertical, 100)
                                .padding(.horizontal, 180)
                                .background(Color.blue)
                                .cornerRadius(10)
                        })
                        .padding(.vertical, 20)
                        .padding(.horizontal, 50)
                        
                        Button(action: {
                             
                        }, label: {
                            Text("Results")
                                .foregroundColor(.white)
                                .padding(.vertical, 100)
                                .padding(.horizontal, 180)
                                .background(Color.blue)
                                .cornerRadius(10)
                        })
                        .padding(.vertical, 20)
                        .padding(.horizontal, 50)
                })
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
