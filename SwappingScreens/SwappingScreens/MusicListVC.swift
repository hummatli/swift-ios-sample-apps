//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Settar Hummetli on 7/15/17.
//  Copyright © 2017 Settar Hummetli. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
    }

    @IBAction func btnBackPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
