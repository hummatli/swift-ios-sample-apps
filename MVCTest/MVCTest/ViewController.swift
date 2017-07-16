//
//  ViewController.swift
//  MVCTest
//
//  Created by Settar Hummetli on 7/16/17.
//  Copyright © 2017 Settar Hummetli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblFulname: UILabel!
    //@IBOutlet weak var ivBobby: UIImageView!
    @IBOutlet weak var tfFirstName: UITextField!

    let person = Person(first: "Sattar", last: "Hummatli")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        


        // Wrong way . Disrupts MVC
        //lblFulname.text = "\(person.firstName) \(person.lastName)"
        
        //Right way. Data monupultes in Model
        lblFulname.text = person.fullName
        
        
        // Wrong way . Disrupts MVC - View as to manuplated in Veiw class itself
//        ivBobby.layer.cornerRadius = 10.0
//        ivBobby.clipsToBounds = true
        
        //Right way for MVC. View has manupulated in View class itself
        //1) Created new view class called RoundedImageView
        //2) Set the resource's to this in Interface Bulider
        //3) Added above view manupulation in    override func awakeFromNib() {} method
        
        
    }

    @IBAction func btnRenamePressed(_ sender: Any) {
        
        if let txt = tfFirstName.text {
            person.firstName = txt
            lblFulname.text = person.fullName
        }
    }



}

