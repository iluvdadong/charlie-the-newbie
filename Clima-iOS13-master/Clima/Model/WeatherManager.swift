//
//  WeatherManager.swift
//  Clima
//
//  Created by DaHae Kim on 2020/10/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//


import Foundation


struct WeatherManager {
    
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=314b688978b9c25763965b124d4d6d43&units=metric"
    //&q=seoul
    
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
            let task = session.dataTask(with: url, completionHandler: handle(data:response:error:))
            
            //4. Start the task
            task.resume()
            
        }
    }
    
    func handle(data: Data?, response: URLResponse?, error: Error?) -> Void {
        
        if error != nil {
            print(error!)
            return //exit out of this function : (So if an error)
        }
        
        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString)
        }
    }
       
}
