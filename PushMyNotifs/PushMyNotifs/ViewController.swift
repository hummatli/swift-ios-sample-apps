//
//  ViewController.swift
//  PushMyNotifs
//
//  Created by Settar Hummetli on 7/22/17.
//  Copyright © 2017 Settar Hummetli. All rights reserved.
//

import UIKit
import Firebase
import FirebaseInstanceID
import FirebaseMessaging

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
        FIRMessaging.messaging().subscribe(toTopic: "/topics/news")
        
    }


}

