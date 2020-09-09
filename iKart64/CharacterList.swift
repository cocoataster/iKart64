//
//  ContentView.swift
//  iKart64
//
//  Created by Eric Sans on 27/06/2020.
//

import SwiftUI
import Player

struct CharacterList: View {
    
    @State var players = [Player]()
    
    let layout = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    @State var showingDetail = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: layout) {
                    ForEach(players, id: \.id) { player in
                        NavigationLink(destination: CharacterDetail(id: player.id!)) {
                            Avatar(name: player.name)
                                .cornerRadius(20)
                                .padding(.all, 5)
                        }
                    }
                }
                .padding(.all, 10)
                .onAppear {
                    loadData()
                }
            }
            .navigationTitle("PLAYER SELECT")
        }
        .navigationBarColor(
            foregroundColor: UIColor(Color.primary),
            tintColor: UIColor(Color.primary)
        )
    }
    
    private func loadData() {
        guard let url = URL(string: "https://ikart64.herokuapp.com/players") else {
            return
        }
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                
                if let response = try? JSONDecoder().decode([Player].self, from: data) {
                    
                    DispatchQueue.main.async {
                        players = response
                    }

                    return
                }
            }
        }.resume()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CharacterList(players: Array<Player>(Repository.players))
            CharacterList(players: Array<Player>(Repository.players))
                .preferredColorScheme(.dark)
        }
    }
}
