//
//  NewArticleViewModel.swift
//  StocksSwiftUI
//
//  Created by Papon Supamongkonchai on 9/12/2564 BE.
//

import Foundation

struct NewsArticleViewModel{
    let articles:Article
    
    var imageURL:String{
        return self.articles.imageURL
    }
    
    var title:String{
        return self.articles.title
    }
    
    var publication: String{
        return self.articles.publication.uppercased()
    }
}
