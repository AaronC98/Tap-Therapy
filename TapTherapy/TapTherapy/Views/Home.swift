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
                        .padding(.top, 40)
                    
                    NavigationView() {
                        ZStack(alignment: .center) {
                            Rectangle()
                                .fill(Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)))
                                .edgesIgnoringSafeArea(.all)
                            VStack() {
                                NavigationLink(destination: FastTap()) {
                                    ButtonView()
                                        .padding(20)
                                        
                                }
                                NavigationLink(destination: FreePlay()) {
                                    ButtonView2()
                                        .padding(20)
                                       
                                }
                                NavigationLink(destination: FastTap()) {
                                    ButtonView3()
                                        .padding(20)
                                }
                            }
                        }
                    }
                    .navigationViewStyle(StackNavigationViewStyle())
                    .background(Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)))
                })
        
        
        
        
    }
}

struct ButtonView: View {
    var body: some View {
        //        Button(action: {
        //
        //        }, label: {
        Text("Rehab Mode")
            .font(.system(size: 62))
            .foregroundColor(Color.white)
            .padding(.vertical, 100)
            .padding(.horizontal, 180)
            .background(Color(#colorLiteral(red: 0.5215686275, green: 0.6745098039, blue: 0.6862745098, alpha: 1)))
            .cornerRadius(10)
        //        })
        //        .padding(.vertical, 20)
        //        .padding(.horizontal, 50)
    }
}

struct ButtonView2: View {
    var body: some View {
        //        Button(action: {
        //
        //        }, label: {
        Text("Free Play")
            .font(.system(size: 62))
            .foregroundColor(Color.white)
            .padding(.vertical, 100)
            .padding(.horizontal, 230)
            .background(Color(#colorLiteral(red: 0.5215686275, green: 0.6745098039, blue: 0.6862745098, alpha: 1)))
            .cornerRadius(10)
        //        })
        //        .padding(.vertical, 20)
        //        .padding(.horizontal, 50)
    }
}

struct ButtonView3: View {
    var body: some View {
        //        Button(action: {
        //
        //        }, label: {
        Text("Results")
            .font(.system(size: 62))
            .foregroundColor(Color.white)
            .padding(.vertical, 100)
            .padding(.horizontal, 250)
            .background(Color(#colorLiteral(red: 0.5215686275, green: 0.6745098039, blue: 0.6862745098, alpha: 1)))
            .cornerRadius(10)
        //        })
        //        .padding(.vertical, 20)
        //        .padding(.horizontal, 50)
    }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
