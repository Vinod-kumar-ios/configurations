//
//  Configurations.swift
//  ConfigurationSetUp
//
//  Created by Vinod KUmar on 31/03/19.
//  Copyright © 2019 Vinod KUmar. All rights reserved.
//

import UIKit

struct Configuration {
    lazy var environment: Environment = {
        if let configuration = Bundle.main.object(forInfoDictionaryKey: "Configuration") as? String {
            if configuration == Environment.StagingDebug.rawValue{
                return Environment.StagingDebug
            }else{
                 return Environment.ProductionRelease
            }
        }
        return Environment.ProductionRelease
    }()
}
    
    enum Environment: String {
        case StagingDebug                   = "Staging Debug"
        case ProductionRelease              = " Production Release"
        
        var baseURL: String {
            switch self {
            case .StagingDebug: return "https://staging-api.myservice.com"
            case .ProductionRelease: return "https://api.myservice.com"
            }
        }
        
        var token: String {
            switch self {
            case .StagingDebug: return "lktopir156dsq16sbi8Staging"
            case .ProductionRelease: return "5zdsegr16ipsbi1lktpProduction"
            }
        }
    }

