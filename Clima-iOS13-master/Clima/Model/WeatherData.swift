//
//  WeatherData.swift
//  Clima
//
//
//  Created by DaHae Kim on 2020/10/21.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

// weather data come back in
// Decodable struct라는걸 알려줘야함
//

struct WeatherData: Decodable {
    let name: String
    let main: Main
    let weather: [Weather]
}

// 반드시 API - JSON Property와 이름 일치해야함
struct Main: Decodable {
    let temp: Double
}

// weather 아이템의 array다. weather안에 array가 있음
struct Weather: Decodable {
    let main: String
    let description: String
}
