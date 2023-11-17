//
//  SearchBarC.swift
//  Health
//
//  Created by Francesca Pia Sasso on 16/11/23.
//

import SwiftUI

struct SearchBarC: View {
    @State private var searchText: String = ""
    @State private var isSearching: Bool = false
    //@ObservedObject var dataStore = DataStore()

    var body: some View {
        NavigationView {
            VStack {
                SearchBar(searchText: $searchText, isSearching: $isSearching)

            }
            .navigationTitle("Búsqueda")
        }
    }
}



struct SearchBar: View {
    @Binding var searchText: String
    @Binding var isSearching: Bool

    var body: some View {
        HStack {
            TextField("Buscar", text: $searchText)
                .padding(.leading, 24)
                .padding(.trailing, 8)
                .padding(10)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                            .padding(.trailing, 4)
                            .foregroundColor(.gray)

                        if isSearching && !searchText.isEmpty {
                            Button(action: {
                                self.searchText = ""
                            }) {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 8)
                            }
                        } else {
                            Button(action: {
                                // Acción para el micrófono (puedes implementar la lógica de voz aquí)
                            }) {
                                Image(systemName: "mic.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 8)
                            }
                        }
                    }
                )
                .padding(.horizontal, 10)
                .onTapGesture {
                    isSearching = true
                }

            if isSearching {
                Button(action: {
                    isSearching = false
                    searchText = ""
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                }) {
                    Text("Cancelar")
                        .foregroundColor(.blue)
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
                .animation(.default)
            }
        }
        .padding(.top, 8)
        .padding(.leading, 8)
        .padding(.trailing, 8)
        .transition(.move(edge: .top))
        .animation(.default)
    }
}


struct SearchBarC_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarC()
    }
}








#Preview {
    SearchBarC()
}
