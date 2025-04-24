//
//  ViewModel.swift
//  API
//
//  Created by Turma01-18 on 27/03/25.
//

import Foundation
class ViewModel: ObservableObject {
    @Published var letras: [Lyric] = []
    @Published var artist: String = ""
    @Published var title: String = ""
    
    func fetch() {
        guard !artist.isEmpty, !title.isEmpty else {
            print("Artista ou título não podem estar vazios")
            return
        }
        
        let urlString = "https://api.lyrics.ovh/v1/\(artist)/\(title)"
        
        guard let url = URL(string: urlString) else {
            print("URL inválida")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            if let error = error {
                print("Erro na requisição: \(error)")
                return
            }
            
            guard let data = data else {
                print("Sem dados recebidos")
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode(Lyric.self, from: data)
                DispatchQueue.main.async {
                    print("Dados recebidos: \(parsed.lyrics)")
                    self?.letras = [parsed] 
                }
            } catch {
                print("Erro ao parsear dados: \(error)")
            }
        }
        task.resume()
    }
}
