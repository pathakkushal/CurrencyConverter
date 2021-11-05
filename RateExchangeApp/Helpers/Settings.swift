//
//  Settings.swift
//  RateExchangeApp
//
//  Created by Kushal Pathak on 05/11/21.
//

class GlobalSettings {
    static let shared = GlobalSettings()

    // Rates Exchange API key [YOUR_API_KEY]
    // Get your own api key from https://ratesexchange.eu
    let ratesExchangeApiKey = "69ba4de1ab162e47bb23216b459f53e1"
}

struct Routes {
private static let s = GlobalSettings.shared

//    static let apiBaseUrl = "https://api.ratesexchange.eu/client"
static let apiBaseUrl = "https://api.exchangeratesapi.io/v1/"
static let apiCheckOnLine = "\(apiBaseUrl)/checkapi"
static let apiKeyParam = "?apiKey=\(s.ratesExchangeApiKey)"
static let latestDetailedRatesUri = "\(apiBaseUrl)/latest\(apiKeyParam)"
static let currenciesUri = "\(apiBaseUrl)/currencies\(apiKeyParam)"
static let convertRatesUri = "\(apiBaseUrl)/convert\(apiKeyParam)"
static let currencyHistoryRatesUri = "\(apiBaseUrl)/historydates\(apiKeyParam)"
static let historyRatesForCurrency = "\(apiBaseUrl)/historydetails\(apiKeyParam)"
}
