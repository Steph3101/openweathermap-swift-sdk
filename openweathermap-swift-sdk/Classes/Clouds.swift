//
//  Clouds.swift
//  Pods
//
//  Created by Ulaş Sancak on 21/03/2017.
//
//

import ObjectMapper

class Clouds: Mappable {
    
    /**
     Cloudiness by percentage
     */
    var all: Int?

    required init?(map: Map) {
        
    }
    
    // Mappable
    func mapping(map: Map) {
        all     <- map["all"]
    }
    
}
