//
//  ViewController.swift
//  HelloNet01
//
//  Created by 申潤五 on 2019/12/7.
//  Copyright © 2019 申潤五. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var statuslabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(networkStatus())
    }


    
    @IBAction func networkStatus(_ sender: Any) {
        if networkStatus() == true{
            statuslabel.text = "有網路"
        }else{
            statuslabel.text = "沒網路"
        }
    }
    
}

