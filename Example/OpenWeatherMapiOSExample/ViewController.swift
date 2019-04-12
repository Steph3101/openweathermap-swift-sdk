//
//  ViewController.swift
//  OpenWeatherMapiOSExample
//
//  Created by Ulaş Sancak on 10/04/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

import UIKit
import openweathermap_swift_sdk

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        OpenWeatherMapAPIClient.client.getWeather(cityName: "istanbul") { (weatherData, error) in
            if error == nil && weatherData!.code == "200" {
                //Data received
            }
        }
        OpenWeatherMapAPIClient.client.getWeather(cityIDs: [524901, 703448, 2643743], limit: 0) { (result, error) in
            if error == nil && result!.code == "200" {
                //Data received
            }
        }
        OpenWeatherMapAPIClient.client.getForecast(cityName: "istanbul", countryCode: "tr", limit: 0) { (result, error) in
            if error == nil && result!.code == "200" {
                //Data received
            }
        }
        OpenWeatherMapAPIClient.client.getDailyForecast(cityName: "istanbul", countryCode: "tr", limit: 0) { (result, error) in
            if error == nil && result!.code == "200" {
                //Data received
            }
        }
        OpenWeatherMapAPIClient.client.getDailyForecastUV(coordinates: Coordinates(latitude: 37.75, longitude: 122.37), limit: 0) { (result, error) in
            if error == nil {
                //Data received
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

