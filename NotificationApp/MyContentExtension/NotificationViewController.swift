//
//  NotificationViewController.swift
//  MyContentExtension
//
//  Created by Settar Hummetli on 7/22/17.
//  Copyright © 2017 Settar Hummetli. All rights reserved.
//

import UIKit
import UserNotifications
import UserNotificationsUI

class NotificationViewController: UIViewController, UNNotificationContentExtension {

    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any required interface initialization here.
    }
  

    func didReceive(_ notification: UNNotification) {

        guard let attachment = notification.request.content.attachments.first else {
            return
        }

        if attachment.url.startAccessingSecurityScopedResource() {
            let imageData = try? Data.init(contentsOf: attachment.url)

            //This has a bug. HAve to solve this
            if let img = imageData {
                imageView.image = UIImage(data: img)
            }
        }
        
        
    }

}
