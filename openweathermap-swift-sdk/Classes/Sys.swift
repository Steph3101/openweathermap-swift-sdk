//
//  Sys.swift
//  Pods
//
//  Created by Ulaş Sancak on 21/03/2017.
//
//

import ObjectMapper

class Sys: Mappable {

    var type: Int?
    var id: Int?
    /**
     Country code (GB, JP etc.)
     */
    var countryCode: String?
    var pod: String?
    /**
     Sunrise time, unix, UTC
     */
    var sunriseTime = TimeInterval()
    /**
     Sunset time, unix, UTC
     */
    var sunsetTime = TimeInterval()
    
    required init?(map: Map) {
        
    }
    
    // Mappable
    func mapping(map: Map) {
        type            <- map["type"]
        id           <- map["id"]
        countryCode     <- map["country"]
        pod             <- map["pod"]
        sunriseTime     <- map["sunrise"]
        sunsetTime      <- map["sunset"]
    }
}
