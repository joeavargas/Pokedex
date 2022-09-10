//
//  BarView.swift
//  Pokedex
//
//  Created by Joe Vargas on 9/10/22.
//

import SwiftUI

struct BarView: View {
    var value: Int = 100
    var title: String = "HP"
    var color: Color = .blue
    
    var body: some View {
        HStack {
            Text(title)
                .padding(.leading, 32)
                .foregroundColor(.gray)
                .frame(width: 100)
            
            HStack {
                Text("\(value)")
                    .frame(width: 40)
                    .padding(.trailing)
                
                ZStack(alignment: .leading) {
                    
                    // Frame
                    Capsule()
                        .frame(width: 100, height: 20).animation(.default)
                        .foregroundColor(Color(.systemGray5))
                    
                    // Fill
                    Capsule()
                        .frame(width: value > 100 ? CGFloat(100) : CGFloat(value), height: 20).animation(.default)
                        .foregroundColor(color)
                }
                Spacer()
            }
            .padding(.leading)
        }
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView()
    }
}
