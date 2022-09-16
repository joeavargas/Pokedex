//
//  PokemonDetailView.swift
//  Pokedex
//
//  Created by Joe Vargas on 9/7/22.
//

import SwiftUI
import Kingfisher

struct PokemonDetailView: View {
    let pokemon: Pokemon
    let viewModel: PokemonCellViewModel
    @Environment(\.colorScheme) var colorScheme
    
    init(pokemon: Pokemon) {
        self.pokemon = pokemon
        self.viewModel = PokemonCellViewModel(pokemon: pokemon)
    }
    
    var body: some View {
        ZStack {
            
            // MARK: LINEAR GRADIENT BG
            LinearGradient(gradient: Gradient(colors: [Color(viewModel.backgroundColor), Color.white]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            colorScheme == .dark ? Color.darkGray.offset(y: 300) : Color.white.offset(y: 300)
            
            ScrollView {
                // MARK: POKEMON IMAGE
                KFImage(URL(string: pokemon.imageUrl))
                    .resizable()
                    .frame(width: 200, height: 200)
                
                VStack {
                    // MARK: POKEMON NAME
                    Text(pokemon.name.capitalized)
                        .font(.largeTitle)
                        .padding(.top, 40)
                    
                    // MARK: POKEMON TYPE
                    Text(pokemon.type.capitalized)
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                        .padding(.init(top: 8, leading: 24, bottom: 8, trailing: 24))
                        .background(Color(viewModel.backgroundColor))
                        .cornerRadius(20)
                    
                    // MARK: POKEMON DESCRIPTION
                    Text(pokemon.description)
                        .padding(.horizontal)
                        .padding(.top, 12)
                    
                    HStack {Spacer()}
                }
                .background(colorScheme == .dark ? Color.darkGray : Color.white)
                .cornerRadius(40)
                .padding(.top, -40)
                .zIndex(-1)
                
                // MARK: POKEMON STATE CHART
                HStack {
                    Text("Stats")
                        .font(.system(size: 16, weight: .semibold))
                        .padding(.leading)
                    
                    Spacer()
                }
                
                BarChartView(pokemon: pokemon)
                    .padding(.trailing)
                    .padding(.top, -16)
            }
        }
    }
}

struct PokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailView(pokemon: MOCK_POKEMON)
            .preferredColorScheme(.light)
        PokemonDetailView(pokemon: MOCK_POKEMON)
            .preferredColorScheme(.dark)
    }
}
