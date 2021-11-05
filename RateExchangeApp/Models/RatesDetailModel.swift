//
//  RatesDetailModel.swift
//  RateExchangeApp
//
//  Created by Kushal Pathak on 05/11/21.
//

struct RatesDetailModel: Decodable {
    let base: String
    let date: String
    let rates: [RateDetail]
}

struct RateDetail: Decodable {
    let symbol: String
    let currency: String
    let value: Double
}
