//
//  List.swift
//  TapTherapy
//
//  Created by Aaron  on 28/10/2020.
//

import SwiftUI

struct List : View {
    
    @Binding var page : Int
    
    var body: some View{
        
        HStack(spacing: 0){
            ForEach(data) {i in
                Card(page: self.$page, width: UIScreen.main.bounds.width, data: i)
            }
        }
    }
}
