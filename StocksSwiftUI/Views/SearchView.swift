//
//  SearchView.swift
//  StocksSwiftUI
//
//  Created by Papon Supamongkonchai on 9/12/2564 BE.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchTerm:String
    
    var body: some View {
        
        HStack{
            Spacer()
            Image(systemName: "magnifyingglass")
            TextField("Search", text: self.$searchTerm)
                .foregroundColor(Color.primary)
                .padding(10)
            Spacer()
        }.foregroundColor(.secondary)
            .background(Color.white.opacity(0.8))
            .cornerRadius(10)
            .padding(10)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(searchTerm: .constant(""))
    }
}
