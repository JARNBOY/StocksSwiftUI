//
//  Stock.swift
//  StocksSwiftUI
//
//  Created by Papon Supamongkonchai on 9/12/2564 BE.
//

import Foundation

struct Stock: Decodable{
    let symbol:String
    let description:String
    let price:Double
    let change:String
}
