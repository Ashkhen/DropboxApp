//
//  WelcomeSwipeViewController.swift
//  DropboxApp
//
//  Created by Ashkhen Sargsyan on 2/4/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class WelcomeSwipeViewController: UIViewController {

    @IBOutlet weak var welcomeScreens: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeScreens.contentSize = CGSize(width: 960, height: 568)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
