//
//  BarChartView.swift
//  Pokedex
//
//  Created by Joe Vargas on 9/10/22.
//

import SwiftUI

struct BarChartView: View {
    let pokemon: Pokemon
    var body: some View {
        VStack {
                BarView(value: pokemon.height, title: "Height", color: .orange)
                BarView(value: pokemon.attack, title: "Attack", color: .red)
                BarView(value: pokemon.defense, title: "Defense", color: .blue)
                BarView(value: pokemon.weight, title: "Weight", color: .purple)
                BarView(value: 100, title: "Total", color: .green)
        }
        .padding()
    }
}

struct BarChartView_Previews: PreviewProvider {
    static var previews: some View {
        BarChartView(pokemon: MOCK_POKEMON)
        
    }
}
