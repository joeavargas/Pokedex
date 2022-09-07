//
//  Pokemon.swift
//  Pokedex
//
//  Created by Joe Vargas on 9/7/22.
//

import Foundation

struct Pokemon: Codable, Identifiable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
    let attack: Int
    let defense: Int
    let height: Int
    let weight: Int
}

let MOCK_POKEMON: [Pokemon] = [
    .init(id: 0, name: "Bulbasaur", imageUrl: "bulbasaur", type: "poison", attack: 49, defense: 49, height: 7, weight: 69),
    .init(id: 1, name: "Ivysaur", imageUrl: "bulbasaur", type: "poison", attack: 49, defense: 49, height: 7, weight: 69),
    .init(id: 2, name: "Venusaur", imageUrl: "bulbasaur", type: "poison", attack: 49, defense: 49, height: 7, weight: 69),
    .init(id: 3, name: "Charmander", imageUrl: "bulbasaur", type: "poison", attack: 49, defense: 49, height: 7, weight: 69),
    .init(id: 4, name: "Charmeleon", imageUrl: "bulbasaur", type: "poison", attack: 49, defense: 49, height: 7, weight: 69),
]
