//
//  Statistics.swift
//  iKart64
//
//  Created by Eric Sans on 28/06/2020.
//

import SwiftUI
import Player

struct Statistics: View {
    let kart: Kart
    
    var body: some View {
        HStack {
            Stat(color: kart.color, title: kart.speed, iconName: "speedometer")
            Stat(color: kart.color, title: kart.seconds, iconName: "timer")
            Stat(color: kart.color, title: kart.weight.value, iconName: "shield")
        }
    }
}

struct Statistics_Previews: PreviewProvider {
    static var previews: some View {
        Statistics(kart: Repository.players[2].kart)
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            .previewLayout(.fixed(width: 350, height: 100))
    }
}
