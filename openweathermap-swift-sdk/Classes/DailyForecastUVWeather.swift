//
//  DailyForecastUVWeather.swift
//  Alamofire
//
//  Created by Stéphane Azzopardi on 12/04/2019.
//

import UIKit

import ObjectMapper

public class DailyForecastUVWeather: Mappable {

    /**
     Time of data calculation, unix, UTC
     */
    public var dataTime: Double?
    /**
     String time of data forecasted
     */
    public var dataTimeText: String?
    /**
     Latitude
     */
    public var latitude: Double?
    /**
     Longitude
     */
    public var longitude: Double?
    /**
     UV Value
     */
    public var value: Double?


    required public init?(map: Map) {

    }

    // Mappable
    public func mapping(map: Map) {
        dataTime        <- map["date"]
        dataTimeText    <- map["date_iso"]
        latitude        <- map["lat"]
        longitude       <- map["lon"]
        value           <- map["value"]
    }
}
