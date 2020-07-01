//
//  CharacterDetail.swift
//  iKart64
//
//  Created by Eric Sans on 27/06/2020.
//

import SwiftUI
import Player

struct CharacterDetail: View {
    
    var id: Int
    
    @State var character: Player?
    
    var body: some View {
        ScrollView {
            VStack {
                if let character = character {
                    Avatar(name: character.name)
                    Statistics(kart: character.kart)
                    .padding(.top, 8)
                    Text(character.description)
                        .multilineTextAlignment(.leading)
                        .padding(.all, 24)
                } else {
                    Text("Loading")
                }
                
            }
            .onAppear {
                loadData()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
    
    private func loadData() {
        guard let url = URL(string: "http://localhost:8080/players/\(id)") else {
            return
        }
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                
                if let response = try? JSONDecoder().decode(Player.self, from: data) {
                    
                    DispatchQueue.main.async {
                        character = response
                    }

                    return
                }
            }
        }.resume()
    }
}

struct CharacterDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CharacterDetail(id: 5, character: Repository.players[5])
            CharacterDetail(id: 0, character: Repository.players[0])
                .preferredColorScheme(.dark)
        }
    }
}
