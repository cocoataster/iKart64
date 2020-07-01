//
//  Stat.swift
//  iKart64
//
//  Created by Eric Sans on 27/06/2020.
//

import SwiftUI
import Player

struct Stat: View {
    let color: Kart.Color
    let title: String
    let iconName: String
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .frame(minWidth: 0, idealWidth: 56, maxWidth: .infinity, minHeight: 0, idealHeight: 56, maxHeight: .infinity, alignment: .center)
                    .foregroundColor(color.value.opacity(0.75))
                    .overlay(
                        Circle()
                            .stroke(Color.primary, lineWidth: 2)
                    )
                
                Image(systemName: iconName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 32, height: 32, alignment: .center)
                    .foregroundColor(Color.primary)
            }
            
            Text(title)
                .bold()
        }
    }
}

struct Stat_Previews: PreviewProvider {
    static var previews: some View {
        Stat(color: .red, title: "heavy", iconName: "shield")
            .previewLayout(.fixed(width: 100, height: 100))
    }
}
