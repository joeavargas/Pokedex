//
//  PokemonCellViewModel.swift
//  Pokedex
//
//  Created by Joe Vargas on 9/9/22.
//

import SwiftUI

struct PokemonCellViewModel {
    let pokemon: Pokemon
    
    var backgroundColor: UIColor {
        switch pokemon.type{
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
    
    init(pokemon: Pokemon) {
        self.pokemon = pokemon
    }
}
