//
//  Kart+Ext.swift
//  iKart64
//
//  Created by Eric Sans on 27/06/2020.
//

import SwiftUI
import Player

extension Kart {
    
    var speed: String {
        "\(topSpeed) kmph"
    }
    
    var seconds: String {
        "\(timeToTopSpeed) seconds"
    }
}

extension Kart.Color {
    
    var value: Color {
        switch self {
        case .red:
            return .red
        case .green:
            return .green
        case .pink:
            return .pink
        case .blue:
            return .blue
        case .yellow:
            return .yellow
        case .purple:
            return .purple
        }
    }
}

extension Kart.Weight {
    
    var value: String {
        switch self {
        case .light:
            return "Light"
        case .medium:
            return "Medium"
        case .heavy:
            return "Heavy"
        }
    }
}
