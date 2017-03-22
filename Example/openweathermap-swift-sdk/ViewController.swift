//
//  ViewController.swift
//  openweathermap-swift-sdk
//
//  Created by git on 03/21/2017.
//  Copyright (c) 2017 git. All rights reserved.
//

import UIKit
import openweathermap_swift_sdk

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        OpenWeatherMapAPIClient.client.getWeather(cityName: "istanbul") { (weather, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
        OpenWeatherMapAPIClient.client.getWeather(cityName: "istanbul", countryCode: "tr") { (weather, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
        OpenWeatherMapAPIClient.client.getWeather(cityID: 54849) { (weather, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
        OpenWeatherMapAPIClient.client.getWeather(coordinates: Coordinates(latitude: 41.0, longitude: 29.0)) { (weather, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
        OpenWeatherMapAPIClient.client.getWeather(ZIPCode: "34188", countryCode: "tr") { (weather, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
        OpenWeatherMapAPIClient.client.getWeather(cityIDs: [543657, 546565], limit: 0) { (weatherArrayResult, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
        OpenWeatherMapAPIClient.client.getWeather(coordinates: Coordinates(latitude: 41.0, longitude: 29.0), countOfCity: 0) { (weatherArrayResult, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
        OpenWeatherMapAPIClient.client.getWeather(zone: "12,32,15,37,10", limit: 0) { (weatherArrayResult, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
        OpenWeatherMapAPIClient.client.getForecast(cityName: "istanbul", countryCode: "tr", limit: 0) { (result, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
        OpenWeatherMapAPIClient.client.getForecast(cityID: 54656, limit: 0) { (weatherArrayResult, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
        OpenWeatherMapAPIClient.client.getForecast(ZIPCode: "34188", countryCode: "tr", limit: 0) { (weatherArrayResult, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
        OpenWeatherMapAPIClient.client.getForecast(coordinates: Coordinates(latitude: 41.0, longitude: 29.0), limit: 0) { (weatherArrayResult, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
        OpenWeatherMapAPIClient.client.getDailyForecast(cityName: "istanbul", countryCode: "tr", limit: 0) { (dailyForecastResult, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
        OpenWeatherMapAPIClient.client.getDailyForecast(cityID: 465656, limit: 0) { (dailyForecastResult, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
        OpenWeatherMapAPIClient.client.getDailyForecast(coordinates: Coordinates(latitude: 41.0, longitude: 29.0), limit: 0) { (dailyForecastResult, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
        OpenWeatherMapAPIClient.client.getDailyForecast(ZIPCode: "34188", countryCode: "tr", limit: 0) { (dailyForecastResult, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
        // Do any additional setup after loading the view, typically efrom a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

