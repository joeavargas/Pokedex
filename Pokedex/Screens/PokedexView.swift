//
//  PokedexView.swift
//  Pokedex
//
//  Created by Joe Vargas on 9/6/22.
//

import SwiftUI

struct PokedexView: View {
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
    @ObservedObject var viewModel = PokemonViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridItems, spacing: 16){
                    ForEach(viewModel.pokemon) { pokemon in
                        NavigationLink(destination: NavigationLazyView(PokemonDetailView(pokemon: pokemon)), label: {
                            PokemonCell(pokemon: pokemon)
                        })
                    }
                }
            }
            .navigationTitle("Pokedex")
            .onAppear {
                viewModel.fetchPokemon()
            }
        }
        
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
