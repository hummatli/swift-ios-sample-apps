//
//  ViewController.swift
//  ScrollViewSample
//
//  Created by Settar Hummetli on 7/14/17.
//  Copyright © 2017 Settar Hummetli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var images = [UIImageView]()
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        var contentWidth: CGFloat = 0.0
        
        print("ScrolView width : \(scrollView.frame.width)")
        
        let scrollWidth = scrollView.frame.width
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x)
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 75, y: scrollView.frame.midY - 75, width: 150, height: 150)
            
            contentWidth += scrollWidth
            
        }
        
        scrollView.clipsToBounds = false
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.height)
        
        //This was a task and I found in stackoverflow
        view.addGestureRecognizer(scrollView.panGestureRecognizer)
        
        print("Images count: \(images.count)")
    }


}

