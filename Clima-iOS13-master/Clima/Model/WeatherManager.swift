//
//  WeatherManager.swift
//  Clima
//
//  Created by DaHae Kim on 2020/10/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

protocol WeatherManagerDelegate {
    func didUpdateWeather(weather: WeatherModel)
}

struct WeatherManager {
    
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=314b688978b9c25763965b124d4d6d43&units=metric"
    //&q=seoul
    
    var delegate: WeatherManagerDelegate?
    
    //API 활용을 위한 URL 만들어주기
    func fetchWeather(cityName: String) {
        
        let urlString = "\(weatherURL)&q=\(cityName)"
        print(urlString)
        performRequest(urlString: urlString)
        
    }
    
    //만든 API에 요청하기
    func performRequest(urlString: String) {
        
        //1. Create a URL (nil로 안끝나게 하기위해 if let)
        if let url = URL(string: urlString) {
            
            //2. Create URLSession
            let session = URLSession(configuration: .default)
            
            //3. Give the session a task
            //completionHandler: task가 하는 일 : go to url, grab the data, go across entire world and come back with data
            //completionHandler는 사실 function이다.
            let task = session.dataTask(with: url) { (data, response, error) in
                
                //dataTask가 끝나면 실행될 클로저 function
                if error != nil {
                    print(error!)
                    return //exit out of this function : (So if an error)
                }
                // API로 받아온 데이터를 스위프트 오브젝트(propertires, methods)로 변경할 것임
                // 클로저 안에서는 self를 꼭 붙여야 한다.
                if let safeData = data {
                    if let weather = self.parseJSON(weatherData: safeData) {
                        self.delegate?.didUpdateWeather(weather: weather)
                    }
                }
            }
            //4. Start the task
            task.resume()
        }
    }
    
    //
    func parseJSON(weatherData: Data) -> WeatherModel? {
        
        // Object that can decode JSON
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            let id = decodedData.weather[0].id
            let temp = decodedData.main.temp
            let name = decodedData.name
            
            let weather = WeatherModel(conditionId: id, cityName: name, temperature: temp)
            
            print(decodedData.weather[0].id)
            print(weather.conditionName)
            print(weather.temperatureString)
            
        } catch {
            print(error)
            return weather
        }
    }
    
    
}
