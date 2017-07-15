//
//  PlaySongVC.swift
//  SwappingScreens
//
//  Created by Settar Hummetli on 7/15/17.
//  Copyright © 2017 Settar Hummetli. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    @IBOutlet weak var lblSongTitle: UILabel!
    
    private var _selectedSong: String!
    
    var selectedSong: String {
        get {
            return _selectedSong
        }
        set {
            _selectedSong = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblSongTitle.text = _selectedSong!
        
        // Do any additional setup after loading the view.
    }


}
