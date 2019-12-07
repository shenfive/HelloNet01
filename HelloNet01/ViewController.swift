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
    
    @IBOutlet weak var urlAddress: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(networkStatus())
        
        let urlString = "https://www.ichih.com/"
        if let url = URL(string: urlString){
            let urlrequest = URLRequest(url: url)
            wkWebview.load(urlrequest)
            urlAddress.text = urlString
        }
    }
    
    
    @IBAction func goPage(_ sender: Any) {
        if let urlString = urlAddress.text{
            if let url = URL(string: "https://" + urlString){
                let urlrequest = URLRequest(url: url)
                wkWebview.load(urlrequest)
                urlAddress.text = urlString
            }
        }
    }
    
//    @IBAction func goPage(_ sender: UITextField) {
//
//        if let urlString = sender.text{
//            if let url = URL(string: urlString){
//                let urlrequest = URLRequest(url: url)
//                wkWebview.load(urlrequest)
//                urlAddress.text = urlString
//            }
//        }
//    }
    
    

    @IBAction func goBackPage(_ sender: Any) {
        wkWebview.goBack()
    }
    
    

}

