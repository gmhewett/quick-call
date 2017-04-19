//
//  ViewController.swift
//  QuickCall
//
//  Created by Gregory Hewett on 4/19/17.
//  Copyright © 2017 The Reach Lab, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let facetimeURL: URL = URL(string: "facetime://8064707311") {
            let application:UIApplication = UIApplication.shared
            if (application.canOpenURL(facetimeURL)) {
                application.open(facetimeURL, options: [:], completionHandler: { (success) in
                    print(success)
                });
            }
        }
    }
}

