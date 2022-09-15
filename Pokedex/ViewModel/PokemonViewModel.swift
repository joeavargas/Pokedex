//
//  PokemonViewModel.swift
//  Pokedex
//
//  Created by Joe Vargas on 9/7/22.
//

import SwiftUI

class PokemonViewModel: ObservableObject {
    @Published var pokemon = [Pokemon]()
    @Published var filteredPokemon = [Pokemon]()
    
    
    func fetchPokemon() {
        NetworkManager.shared.fetchPokemon { pokemon in
            self.pokemon = pokemon
        } onError: { error in
            print("DEBUG: \(error)")
        }
    }
    
    func backgroundColor(forType type: String) -> UIColor {
        switch type {
        case "fire": return .systemRed
        case "poison": return .systemGreen
        case "water": return .systemBlue
        case "electric": return .systemYellow
        case "psychic": return .systemPurple
        case "normal": return .systemOrange
        case "ground": return .systemGray
        case "flying": return .systemTeal
        case "fairy": return .systemPink
        default: return .systemIndigo
        }
    }
    
    func filterPokemon(by filter: String) {
        filteredPokemon = pokemon.filter({ $0.type == filter })
    }
}
