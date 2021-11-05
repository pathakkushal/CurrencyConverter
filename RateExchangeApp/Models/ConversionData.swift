//
//  ConversionData.swift
//  RateExchangeApp
//
//  Created by Kushal Pathak on 05/11/21.
//

struct ConversionData {
    var fromCurrency: String?
    var toCurrency: String?
    var convertDate: String?
    var fromAmount: Double?
}

struct ConversionDetails {
    var source: String?
    var amount: String?
}

struct ConversionCurrencyData {
    var currency: Currency?
    var details: ConversionDetails?
}
