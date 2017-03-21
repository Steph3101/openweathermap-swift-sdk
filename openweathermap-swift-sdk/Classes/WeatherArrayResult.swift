//
//  WeatherArrayResult.swift
//  Pods
//
//  Created by Ulaş Sancak on 21/03/2017.
//
//

import ObjectMapper

public class WeatherArrayResult: BaseResult {
    
    private var alternativeCnt: Int?
    private var privateCnt: Int?

    /**
     The returned number of lines API
     */
    var cnt: Int? {
        get {
            if privateCnt == nil {
                return alternativeCnt
            }
            return privateCnt
        }
        set {
            privateCnt = newValue
        }
    }
    /**
     The array of Weather data
     */
    var weatherDatas: [Weather]?
    
    // Mappable
    override public func mapping(map: Map) {
        super.mapping(map: map)
        cnt             <- map["cnt"]
        alternativeCnt  <- map["count"]
        weatherDatas    <- map["list"]
    }
}
