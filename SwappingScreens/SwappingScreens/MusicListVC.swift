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

    @IBAction func load3rdScreenPressed(_ sender: Any) {
        let songTitle = "Quit Playing With My Heart"
        performSegue(withIdentifier: "seguePlaySongVC", sender: songTitle)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? PlaySongVC {
            if let song = sender as? String {
                destination.selectedSong = song
            }
        }
    }
}
