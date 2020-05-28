//
//  File.swift
//  Clima
//
//  Created by Volodymyr Ostapyshyn on 27.05.2020.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Decodable {
    let temp: Double // main.temp
    
}

struct Weather: Decodable {
    let id: Int // weather[0].description
}
