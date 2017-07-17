//
//  ViewController.swift
//  ProgressBarFun
//
//  Created by Settar Hummetli on 7/17/17.
//  Copyright © 2017 Settar Hummetli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressBarView: ProgressBarView!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func sliderMoved(_ sender: Any) {
        progressBarView.progress = CGFloat(slider.value)
    }

}

