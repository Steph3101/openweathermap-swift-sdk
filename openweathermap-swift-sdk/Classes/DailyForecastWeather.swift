//
//  ForecastWeather.swift
//  Pods
//
//  Created by Ulaş Sancak on 21/03/2017.
//
//

import ObjectMapper

class DailyForecastWeather: Mappable {
    
    /**
     Weather condition codes and infos
     */
    var weatherInfos: [WeatherInfo]?
    /**
     Wind speed. Unit Default: meter/sec, Metric: meter/sec, Imperial: miles/hour.
     */
    var windSpeed: Double?
    /**
     Cloudiness by percentage
     */
    var clouds: Int?
    /**
     Rain volume
     */
    var rain: Int?
    /**
     Snow volume
     */
    var snow: Int?
    /**
     Time of data calculation, unix, UTC
     */
    var dataTime: Double?
    /**
     String time of data forecasted
     */
    var dataTimeText: String?
    /**
     Temperature model. (Min, max etc.)
     */
    var temperature: Temperature?
    /**
     Atmospheric pressure on the sea level, hPa
     */
    var pressure: Double?
    /**
     Humidity by percentage
     */
    var humidity: Int?
    /**
     Wind direction, degrees (meteorological)
     */
    var windDirection: Int?
    
    required init?(map: Map) {
        
    }
    
    // Mappable
    func mapping(map: Map) {
        weatherInfos        <- map["weather"]
        windSpeed           <- map["speed"]
        clouds              <- map["clouds"]
        rain                <- map["rain"]
        snow                <- map["snow"]
        dataTime            <- map["dt"]
        dataTimeText        <- map["dt_text"]
        temperature         <- map["temp"]
        pressure            <- map["pressure"]
        humidity            <- map["humidity"]
        windDirection       <- map["deg"]
    }
}
