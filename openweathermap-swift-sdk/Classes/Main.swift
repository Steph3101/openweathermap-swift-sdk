//
//  Main.swift
//  Pods
//
//  Created by Ulaş Sancak on 21/03/2017.
//
//

import ObjectMapper

/**
 Main weather parameters
 */
class Main: Mappable {
    /**
     Temperature. Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit
     */
    var temp: Double?
    /**
     Atmospheric pressure (on the sea level, if there is no sea_level or grnd_level data), hPa
     */
    var pressure: Double?
    /**
     Atmospheric pressure on the sea level, hPa
     */
    var seaLevelPressure: Double?
    /**
     Atmospheric pressure on the ground level, hPa
     */
    var groundLevelPressure: Double?
    /**
     Humidity, %
     */
    var humidity: Double?
    /**
     Minimum temperature at the moment. This is deviation from current temp that is possible for large cities and megalopolises geographically expanded (use these parameter optionally). Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.
     */
    var tempMin: Double?
    /**
     Maximum temperature at the moment. This is deviation from current temp that is possible for large cities and megalopolises geographically expanded (use these parameter optionally). Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.
     */
    var tempMax: Double?
    
    required init?(map: Map) {
        
    }
 
    // Mappable
    func mapping(map: Map) {
        temp                    <- map["temp"]
        pressure                <- map["pressure"]
        seaLevelPressure        <- map["sea_level"]
        groundLevelPressure     <- map["grnd_level"]
        humidity                <- map["humidity"]
        tempMin                 <- map["temp_min"]
        tempMax                 <- map["temp_max"]
    }
}
