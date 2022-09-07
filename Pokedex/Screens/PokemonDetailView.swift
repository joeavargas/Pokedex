//
//  PokemonDetailView.swift
//  Pokedex
//
//  Created by Joe Vargas on 9/7/22.
//

import SwiftUI

struct PokemonDetailView: View {
    let pokemon: Pokemon
    var body: some View {
        VStack {
            Text(pokemon.name.capitalized)
        }
    }
}

struct PokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailView(pokemon: MOCK_POKEMON[0])
    }
}
