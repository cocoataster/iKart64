//
//  ContentView.swift
//  iKart64
//
//  Created by Eric Sans on 27/06/2020.
//

import SwiftUI

struct CharacterList: View {
    
    let data = [
        "mario",
        "luigi",
        "peach",
        "toad",
        "yoshi",
        "dk",
        "wario",
        "bowser"
    ]
    
    let layout = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: layout) {
                    ForEach(data, id: \.self) { item in
                        Image(item)
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(20)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 5)
                    }
                }
                .padding(.all, 10)
            }
            .navigationTitle("PLAYER SELECT")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CharacterList()
            CharacterList()
                .preferredColorScheme(.dark)
        }
    }
}
