//
//  StockListViewModel.swift
//  StocksSwiftUI
//
//  Created by Papon Supamongkonchai on 9/12/2564 BE.
//

import Foundation

class StockListViewModel:ObservableObject{
    
    @Published var searchTerm:String = ""
    @Published var stocks:[StockViewModel] = [StockViewModel]()
    @Published var articles:[NewArticleViewModel] = [NewArticleViewModel]()
    func load(){
        fetchNew()
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
    
    func fetchNew(){
        WebService().getTopNews { news in
            if let news = news{
                DispatchQueue.main.async {
                    self.articles = news.map(NewArticleViewModel.init)
                }
                
            }
        }
    }
    
}
