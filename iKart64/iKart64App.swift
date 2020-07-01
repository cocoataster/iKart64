//
//  iKart64App.swift
//  iKart64
//
//  Created by Eric Sans on 27/06/2020.
//

import SwiftUI

@main
struct iKart64App: App {
    var body: some Scene {
        WindowGroup {
            CharacterList()
                .preferredColorScheme(.dark)
        }
    }
}
