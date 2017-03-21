//
//  WeatherInfo.swift
//  Pods
//
//  Created by Ulaş Sancak on 21/03/2017.
//
//

import ObjectMapper

class WeatherInfo: Mappable {

    /**
     Weather condition id
     */
    var id: Int?
    /**
     Group of weather parameters (Rain, Snow, Extreme etc.)
     */
    var main: String?
    /**
     Weather condition within the group
     */
    var description: String?
    /**
     Weather icon id
     */
    var icon: String?
    
    required init?(map: Map) {
        
    }
    
    // Mappable
    func mapping(map: Map) {
        id              <- map["id"]
        main            <- map["main"]
        description     <- map["description"]
        icon            <- map["icon"]
    }
}
