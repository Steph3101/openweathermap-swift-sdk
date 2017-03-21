//
//  PrecipitationType.swift
//  Pods
//
//  Created by Ulaş Sancak on 21/03/2017.
//
//

import ObjectMapper

class Precipitation: Mappable {

    var volumeForLast3Hours: Int?
    
    required init?(map: Map) {
        
    }
    
    // Mappable
    func mapping(map: Map) {
        volumeForLast3Hours     <- map["3h"]
    }
    
}
