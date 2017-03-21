//
//  Coordinates.swift
//  Pods
//
//  Created by Ulaş Sancak on 21/03/2017.
//
//

import ObjectMapper

public class Coordinates: Mappable {

    var latitude: Double = 0.0
    var longitude: Double = 0.0
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
    
    required public init?(map: Map) {
        
    }
    
    // Mappable
    public func mapping(map: Map) {
        latitude        <- map["lat"]
        longitude       <- map["lon"]
    }
}
