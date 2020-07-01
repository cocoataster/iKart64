//
//  Avatar.swift
//  iKart64
//
//  Created by Eric Sans on 27/06/2020.
//

import SwiftUI

struct Avatar: View {
    
    var name: String
    
    var body: some View {
        ZStack() {
            Image(name)
                .renderingMode(.original)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
            GeometryReader { geometry in
                VStack() {
                    Spacer()
                    ZStack {
                        Rectangle()
                            .foregroundColor(.gray)
                            .luminanceToAlpha()
                        Text(name)
                            .font(.title)
                            .textCase(.uppercase)
                            .foregroundColor(.white)
                    }
                    .frame(width: geometry.size.width, height: 30)
                }
            }
        }
    }
}

struct Avatar_Previews: PreviewProvider {
    static var previews: some View {
        Avatar(name: "mario")
            .previewLayout(.fixed(width: 400, height: 400))
    }
}
