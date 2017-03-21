//
//  Client.swift
//  Pods
//
//  Created by Ulaş Sancak on 21/03/2017.
//
//

import UIKit

/**
 OpenWeatherMap configuration class
 */
public class Client: NSObject {

    /**
     API key for OpenWeatherMap
     */
    private(set) var appID: String!
    /**
     Shared configuration instance
     
     @return Client instance
     */
    
    static let client = Client()
    /**
     Create Client with API key
     
     @param AppID API key
     @return Client instance
     */
    
    public class func client(appID: String) -> Client {
        let client = Client.client
        client.appID = appID
        return client
    }
    
}
