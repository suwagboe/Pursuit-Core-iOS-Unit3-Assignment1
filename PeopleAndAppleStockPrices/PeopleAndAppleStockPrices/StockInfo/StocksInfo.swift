//
//  StocksInfo.swift
//  PeopleAndAppleStockPrices
//
//  Created by Pursuit on 12/10/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

struct allTheInfo: Codable {
    let label: String // the readable format of the date
    let open: Int // where the stock opened at
    let date: String // the number equivalent of the date.
}

// getStocks
