//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

protocol CoinManagerDelegate {
    
    func updatePrice(with number: Double)
    
    //func didFailWithError(error: Error)
}

struct CoinManager {
    
    let baseURL = "https://min-api.cryptocompare.com/data/price?fsym=BTC&tsyms="
    let apiKey = "061e16cc38c45602242004d09a11d1bfe24cf9e327818e62bba0794dc498d8db"
    
    var delegate: CoinManagerDelegate?
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]

    func getCoinPrice(for currency: String) {
        let urlString = "\(baseURL)\(currency)&api_key=\(apiKey)"
        print(urlString)
        performRequest(with: urlString)
        
    }
        
    func performRequest(with urlString: String) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!)
                    //self.delegate?.didFailWithError(error: error!)
                    return
                }
                if let safeData = data {
                    let dataString = String(data: safeData, encoding: .utf8)
                    print(dataString!)
                    if let price = self.parseJSON(safeData) {
                        print(price)

                        self.delegate?.updatePrice(with: price)
                    }
                }
            }
            task.resume()
        }
        
    }
    
    
    func parseJSON(_ data: Data) -> Double? {
        let decoder = JSONDecoder()
        
        do {
            let decodedData = try decoder.decode(CoinData.self, from: data)
            print(decodedData.USD)
            let price  = decodedData.USD
            //print(price + "do")
            
            
            //let weather = WeatherModel(conditionId: id, cityName: name, temperature: temp)
            //print(weather.temparatureString)
            return price
            
            
            
        } catch {
            print(error)
            //delegate?.didFailWithError(error: error)
            return nil
        }
    }
    
}
