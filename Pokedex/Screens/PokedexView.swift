//
//  PokedexView.swift
//  Pokedex
//
//  Created by Joe Vargas on 9/6/22.
//

import SwiftUI

struct PokedexView: View {
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridItems, spacing: 16){
                    ForEach(0..<151) { _ in
                        PokemonCell(pokemon: MOCK_POKEMON[2])
                    }
                }
            }
            .navigationTitle("Pokedex")
        }
        
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
