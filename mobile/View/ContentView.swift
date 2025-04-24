//
//  ContentView.swift
//  API
//
//  Created by Turma01-18 on 27/03/25.
//

import SwiftUI
struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack{
            VStack {
                Text("LYRICS")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .monospaced()
                    .foregroundStyle(.blue)
                TextField("Enter artist name", text: $viewModel.artist)
                    .padding()
                    .textContentType(.oneTimeCode)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                
                TextField("Enter song title", text: $viewModel.title)
                    .padding()
                    .textContentType(.oneTimeCode)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                
                
                Button(action: {
                    viewModel.fetch()
                }) {
                    Text("Search")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .bold()
                }
                .padding()
                
                
                if let lyric = viewModel.letras.first {
                    ScrollView {
                        Text(viewModel.title)
                            .padding()
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .bold()
                        Text(lyric.lyrics)
                        
                        
                    }
                    .padding()
                }
            }
            .padding()
        }
    }}

#Preview {
    ContentView()
}

