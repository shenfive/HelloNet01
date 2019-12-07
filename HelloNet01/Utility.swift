//
//  Utility.swift
//  HelloNet01
//
//  Created by 申潤五 on 2019/12/7.
//  Copyright © 2019 申潤五. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController{
    func networkStatus() -> Bool {
        if Reachability(hostName: "www.apple.com")?.currentReachabilityStatus().rawValue == 0{
            return false
        }else{
            return true
        }
    }
}

