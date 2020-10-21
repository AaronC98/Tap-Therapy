//
//  FastTap.swift
//  TapTherapy
//
//  Created by Aaron  on 21/10/2020.
//

import SwiftUI

import SwiftUI

let defaultTimeRemaining: CGFloat = 10
let lineWith: CGFloat = 30
let radius: CGFloat = 70

let tapCount: Int = 0

struct FastTap: View {
    
    //initalise count as 0
    @State var tapCount: Int = 0
    
    @State private var isActive = false
    @State private var timeRemaining: CGFloat = defaultTimeRemaining
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack(spacing: 25) {
            ZStack {
                Circle()
                    .stroke(Color.gray.opacity(0.2), style: StrokeStyle(lineWidth: lineWith, lineCap: .round))
                Circle()
                    .trim(from: 0, to: 1 - ((defaultTimeRemaining - timeRemaining) / defaultTimeRemaining))
                    .stroke(timeRemaining > 6 ? Color.green : timeRemaining > 3 ? Color.yellow : Color.red, style: StrokeStyle(lineWidth: lineWith, lineCap: .round))
                    .rotationEffect(.degrees(-90))
                    .animation(.easeInOut)
                Text("\(Int(timeRemaining))").font(.largeTitle)
            }.frame(width: radius * 2, height: radius * 2)
            
            //Pass tapCount as a state variable
            Text("Taps: \(tapCount)")
                .font(.custom("Avenir", size: 40))
                .padding(.top)
                .padding(.bottom)

            //iterate taps on button click
            Button(action: {
                self.tapCount += 1
                isActive = true
            }, label: {
                Label("\(isActive ? "Tap Me!" : "Play")", systemImage: "\(isActive ? "arrow.down.circle" : "play.fill")")
                    .foregroundColor(.white)
                    .padding(.vertical, 20)
                    .padding(.horizontal, 90)
                    .background(Color.blue)
                    .cornerRadius(10)
            })
            .padding(.vertical, 20)
            .padding(.horizontal, 50)
            
        }.onReceive(timer, perform: { _ in
            guard isActive else { return }
            if timeRemaining > 0 {
                timeRemaining -= 1
            } else {
                
                isActive = false
                timeRemaining = defaultTimeRemaining
                tapCount = 0
            }
        })
    }
}

struct text : View {
    var body: some View {
        Text("your score was \(tapCount)")
    }
}

struct FastTap_Previews: PreviewProvider {
    static var previews: some View {
        FastTap()
    }
}
