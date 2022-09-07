//
//  PokemonViewModel.swift
//  Pokedex
//
//  Created by Joe Vargas on 9/7/22.
//

import SwiftUI

class PokemonViewModel: ObservableObject {
    @Published var pokemon = [Pokemon]()
    
    init(){
        fetchPokemon()
    }
    
    func fetchPokemon() {
        NetworkManager.shared.fetchPokemon { pokemon in
            self.pokemon = pokemon
        } onError: { error in
            print("DEBUG: \(error)")
        }
    }
}
