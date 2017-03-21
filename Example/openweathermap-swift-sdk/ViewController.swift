//
//  ViewController.swift
//  openweathermap-swift-sdk
//
//  Created by git on 03/21/2017.
//  Copyright (c) 2017 git. All rights reserved.
//

import UIKit
import openweathermap_swift_sdk

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        APIClient.client.getForecast(cityName: "istanbul", countryCode: "tr", limit: 0) { (result, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
        // Do any additional setup after loading the view, typically efrom a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

