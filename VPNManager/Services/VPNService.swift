//
//  VPNService.swift
//  VPNManager
//
//  Created by Mioke on 1/24/16.
//  Copyright © 2016 Mioke. All rights reserved.
//

import UIKit
import NetworkExtension

class VPNService: KMBaseService {
    
    static let shareInstance = VPNService()

    func test1() {
        
        let manager = NEVPNManager.sharedManager()
        manager.loadFromPreferencesWithCompletionHandler { (error: NSError?) -> Void in
            
            if error == nil {
                // success
                Log.debugPrintln(manager.protocolConfiguration)
                
            } else {
                Log.debugPrintln(error)
            }
        }
        
        let VPNProtocol = NEVPNProtocolIPSec()

//        VPNProtocol.passwordReference
        
        
    }
}
