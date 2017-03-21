//
//  Wind.swift
//  Pods
//
//  Created by Ulaş Sancak on 21/03/2017.
//
//

import ObjectMapper

class Wind: Mappable {

    /**
     Wind speed. Unit Default: meter/sec, Metric: meter/sec, Imperial: miles/hour.
     */
    var speed: Double?
    /**
     Wind direction, degrees (meteorological)
     */
    var direction: Int?
    
    required init?(map: Map) {
        
    }
    
    // Mappable
    func mapping(map: Map) {
        speed       <- map["speed"]
        direction   <- map["deg"]
    }
}
