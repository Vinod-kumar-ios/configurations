//
//  ViewController.swift
//  ConfigurationSetUp
//
//  Created by Vinod KUmar on 31/03/19.
//  Copyright © 2019 Vinod KUmar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        // Initialize Configuration
        var configuration = Configuration()
        
        print(configuration.environment.baseURL)
        print(configuration.environment.token)
    }


}

