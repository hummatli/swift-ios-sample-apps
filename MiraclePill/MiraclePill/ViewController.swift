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
    @IBOutlet weak var imgPill: UIImageView!
    @IBOutlet weak var lblMiraclePills: UILabel!
    @IBOutlet weak var lbl150dollar: UILabel!
    @IBOutlet weak var viewDivider: UIView!
    @IBOutlet weak var lblFullNme: UILabel!
    @IBOutlet weak var tfFullName: UITextField!
    @IBOutlet weak var lblStreetAddress: UILabel!
    @IBOutlet weak var tfStreetAddress: UITextField!
    @IBOutlet weak var lblCity: UILabel!
    @IBOutlet weak var tfCity: UITextField!
    @IBOutlet weak var lblState: UILabel!
    @IBOutlet weak var lblCountry: UILabel!
    @IBOutlet weak var txCountry: UITextField!
    @IBOutlet weak var lblZipCode: UILabel!
    @IBOutlet weak var tfZipCode: UITextField!
    @IBOutlet weak var ivSuccess: UIImageView!
    @IBOutlet weak var btnBuy: UIButton!
    
    
    
    
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
        
        lblCountry.isHidden = true
        txCountry.isHidden = true
        lblZipCode.isHidden = true
        tfZipCode.isHidden = true
        
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
        
        lblCountry.isHidden = false
        txCountry.isHidden = false
        lblZipCode.isHidden = false
        tfZipCode.isHidden = false
        
    }
    
    @IBAction func btnBuyPressed(_ sender: Any) {
        statePicker.isHidden = true
        btnStatePicker.isHidden = true
        imgPill.isHidden = true
        lblMiraclePills.isHidden = true
        lbl150dollar.isHidden = true
        viewDivider.isHidden = true
        lblFullNme.isHidden = true
        tfFullName.isHidden = true
        lblStreetAddress.isHidden = true
        tfStreetAddress.isHidden = true
        lblCity.isHidden = true
        tfCity.isHidden = true
        lblState.isHidden = true
        lblCountry.isHidden = true
        txCountry.isHidden = true
        lblZipCode.isHidden = true
        tfZipCode.isHidden = true
        btnBuy.isHidden = true
        
        
        ivSuccess.isHidden = false
        
        
        
    }
}

