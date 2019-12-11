//
//  StocksInfo.swift
//  PeopleAndAppleStockPrices
//
//  Created by Pursuit on 12/10/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

struct Stock: Codable {
    let label: String // the readable format of the date
    let open: Double // where the stock opened at
    let date: String // the number equivalent of the date.
}

// getStocks

extension Stock {
    
    static func getStocks() -> [Stock] {
    
        // why does this not need parameters like the one from RandomUserApp Dec. 2
        var aStock = [Stock]()
        
        guard let fileUrl = Bundle.main.url(forResource: "applstockinfo", withExtension: "json") else {
            fatalError("could not locate the file")
            
        }
        do {
            // gets the actual data
            let data = try Data(contentsOf: fileUrl)
            // what is this for
            let stocksData = try JSONDecoder().decode([Stock].self, from: data)
            aStock = stocksData
            
        }catch {
            // why is it making me do .self
            fatalError("developer Error: \(error)")
        }
        
        return aStock
    }
    
    static func getAverage() {
        
    }
    
//    static func getMonthsByTheYear() ->[[Stock]] {
//
//        let allStocks = Stock.getStocks()
//
//     //   let sortedStocks =
//        }
        
    }

