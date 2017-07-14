//
//  ViewController.swift
//  MiraclePill
//
//  Created by Settar Hummetli on 7/14/17.
//  Copyright © 2017 Settar Hummetli. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var btnStatePicker: UIButton!
    
    let states = ["Alaska", "Arkansas", "Alabama", "California", "Maine", "New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.view.backgroundColor = UIColor.purple
        
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    @IBAction func btnStatePickerPressed(_ sender: Any) {
        statePicker.isHidden = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        btnStatePicker.setTitle(states[row], for: UIControlState.normal)
        pickerView.isHidden = true
    }
}

