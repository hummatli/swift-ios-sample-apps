//
//  ViewController.swift
//  HellooooWorld-iOS
//
//  Created by Settar Hummetli on 2/23/17.
//  Copyright © 2017 Settar Hummetli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var background: UIImageView!
    
    @IBOutlet weak var titleImage: UIImageView!
    
    
    @IBOutlet weak var btnWelcome: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnWelcomePressed(_ sender: Any) {
        background.isHidden = false
        titleImage.isHidden = false
        btnWelcome.isHidden = true
    }

}

