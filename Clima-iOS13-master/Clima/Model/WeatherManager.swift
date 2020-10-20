//
//  WeatherManager.swift
//  Clima
//
//  Created by DaHae Kim on 2020/10/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//


import Foundation

struct WeatherManager {
    
    let weatherURL = "http://api.openweathermap.org/data/2.5/weather?appid=314b688978b9c25763965b124d4d6d43&units=metric"
    //&q=seoul
    
    func fetchWeather(cityName:
        String) {
        let urlString = "\(weatherURL)&q=\(cityName) "
    }
}
