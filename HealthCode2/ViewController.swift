//
//  ViewController.swift
//  HealthCode2
//
//  Created by Nicole Mellert on 7/9/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let api = NYTAPI()
        api.getBase()
    }


}

