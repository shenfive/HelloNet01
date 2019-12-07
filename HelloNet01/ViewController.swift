//
//  ViewController.swift
//  HelloNet01
//
//  Created by 申潤五 on 2019/12/7.
//  Copyright © 2019 申潤五. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var wkWebview: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(networkStatus())
        
        let urlString = "https://www.ichih.com/"
        if let url = URL(string: urlString){
            let urlrequest = URLRequest(url: url)
            wkWebview.load(urlrequest)
        }
        
        
        
        
    }


    

}

