//
//  Weather.swift
//  Pods
//
//  Created by Ulaş Sancak on 21/03/2017.
//
//

import ObjectMapper

/**
 Weather data model for the current weather API
 */
public class Weather: Mappable {
    /**
     Coordinates of the related ciyu
     */
    var coordinates: Coordinates?
    /**
     Weather condition codes and infos
     */
    var weatherInfos: [WeatherInfo]?
    var base: String?
    /**
     Main weather parameters
     */
    var main: Main?
    /**
     Visibility, meter
     */
    var visibility: Int?
    /**
     Wind model. More info: Wind
     */
    var wind: Wind?
    /**
     Clouds model. Cloudiness, %. More info: Clouds
     */
    var clouds: Clouds?
    /**
     Rain model. Rain volume for the last 3 hours. More info: Rain.
     */
    var rain: Precipitation?
    /**
     Snow model. Snow volume for the last 3 hours. More info: Snow.
     */
    var snow: Precipitation?
    /**
     Time of data calculation, unix, UTC
     */
    var dataTime: Double?
    var sys: Sys?
    /**
     City ID
     */
    var cityID: Int?
    /**
     City Name
     */
    var cityName: String?
    
    required public init?(map: Map) {
        
    }

    // Mappable
    public func mapping(map: Map) {
        coordinates         <- map["coord"]
        weatherInfos        <- map["weather"]
        base                <- map["base"]
        main                <- map["main"]
        visibility          <- map["visibility"]
        wind                <- map["wind"]
        clouds              <- map["clouds"]
        rain                <- map["rain"]
        snow                <- map["snow"]
        dataTime            <- map["dt"]
        sys                 <- map["sys"]
        cityID              <- map["id"]
        cityName            <- map["name"]
    }
}
