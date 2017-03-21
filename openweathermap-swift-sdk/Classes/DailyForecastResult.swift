//
//  DailyForecastResult.swift
//  Pods
//
//  Created by Ulaş Sancak on 21/03/2017.
//
//

import ObjectMapper

/**
 The result model of the daily forecast API
 */
public class DailyForecastResult: BaseResult {
    /**
     Returned number of lines
     */
    var cnt: Int?
    /**
     Returned forecast array
     */
    var weatherDatas: [DailyForecastWeather]?
    /**
     Related city information model
     */
    var city: City?
    
    // Mappable
    override public func mapping(map: Map) {
        super.mapping(map: map)
        cnt             <- map["cnt"]
        city            <- map["city"]
        weatherDatas    <- map["list"]
    }
}
