//
//  FavoriteDetailViewController.swift
//  DropboxApp
//
//  Created by Ashkhen Sargsyan on 2/6/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class FavoriteDetailViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func onDoneTap(sender: AnyObject) {
       self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func onButton(sender: UIButton) {
        sender.selected = !sender.selected
    }
}
