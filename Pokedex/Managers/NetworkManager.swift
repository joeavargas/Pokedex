//
//  NetworkManager.swift
//  Pokedex
//
//  Created by Joe Vargas on 9/7/22.
//

import Foundation

typealias OnApiSuccess = ([Pokemon]) -> Void
typealias OnApiError = (String) -> Void

class NetworkManager {
    
    static let shared = NetworkManager()
    
    let session = URLSession(configuration: .default)
    
    func fetchPokemon(onSuccess: @escaping OnApiSuccess, onError: @escaping OnApiError) {
        let url = URL(string: K.API_URL)
        
        let task = session.dataTask(with: url!) { data, response, error in
            DispatchQueue.main.async {
                
                if let error = error {
                    print("DEBUG: \(error.localizedDescription)")
                }
                
                guard let data = data?.parseData(removeString: "null,"), let response = response as? HTTPURLResponse else {
                    print("DEBUG: Invalid data or response")
                    return
                }
                
                do {
                    switch response.statusCode {
                    case 200:
                        let pokemon = try JSONDecoder().decode([Pokemon].self, from: data)
                        onSuccess(pokemon)
                        
                    default:
                        print("DEBUG: Error 400")
                        onError(error!.localizedDescription)
                    }
                } catch {
                    print("DEBUG: \(error.localizedDescription)", #function)
                }
            }
        }
        task.resume()
    }
}
