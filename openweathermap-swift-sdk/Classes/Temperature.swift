//
//  Temperature.swift
//  Pods
//
//  Created by Ulaş Sancak on 21/03/2017.
//
//

import ObjectMapper

class Temperature: Mappable {

    /**
     Day temperature. Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.
     */
    var day: Double?
    /**
     Min daily temperature. Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.
     */
    var min: Double?
    /**
     Max daily temperature. Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.
     */
    var max: Double?
    /**
     Night temperature. Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.
     */
    var night: Double?
    /**
     Evening temperature. Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.
     */
    var evening: Double?
    /**
     Morning temperature. Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.
     */
    var morning: Double?
    
    required init?(map: Map) {
        
    }

    // Mappable
    func mapping(map: Map) {
        day         <- map["day"]
        min         <- map["min"]
        max         <- map["max"]
        night       <- map["night"]
        evening     <- map["eve"]
        morning     <- map["morn"]
    }
}
