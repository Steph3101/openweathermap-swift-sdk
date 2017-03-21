//
//  City.swift
//  Pods
//
//  Created by Ulaş Sancak on 21/03/2017.
//
//

import ObjectMapper

/**
 City model
 */
class City: Mappable {
    /**
     City ID
     */
    var id: Int?
    /**
     City name
     */
    var name: String?
    /**
     City coordinates
     */
    var coordinates: Coordinates?
    /**
     The country of the city
     */
    var country: String?
    /**
     The population of the city
     */
    var population: Int?
    
    required init?(map: Map) {
        
    }
    
    // Mappable
    func mapping(map: Map) {
        id              <- map["id"]
        name            <- map["name"]
        coordinates     <- map["coord"]
        country         <- map["country"]
        population      <- map["population"]
    }
}
