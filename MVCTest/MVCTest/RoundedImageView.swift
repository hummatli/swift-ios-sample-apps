//
//  RoundedImageView.swift
//  MVCTest
//
//  Created by Settar Hummetli on 7/16/17.
//  Copyright © 2017 Settar Hummetli. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {
    
    override func awakeFromNib() {
        
        layer.cornerRadius = 10.0
        clipsToBounds = true
        
    }
    
}
