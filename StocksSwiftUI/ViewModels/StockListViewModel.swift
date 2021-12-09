//
//  StockListViewModel.swift
//  StocksSwiftUI
//
//  Created by Papon Supamongkonchai on 9/12/2564 BE.
//

import Foundation

class StockListViewModel:ObservableObject{
    
    var searchTerm:String = ""
    @Published var stocks:[StockViewModel] = [StockViewModel]()
    
    func load(){
        fetchStocks()
    }
    
    func fetchStocks(){
        WebService().getStocks { stocks in
            if let stocks = stocks{
                DispatchQueue.main.async {
                    self.stocks = stocks.map(StockViewModel.init)
                }
                
            }
        }
    }
    
}
