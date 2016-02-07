//
//  NewAccountNavigationController.swift
//  DropboxApp
//
//  Created by Ashkhen Sargsyan on 2/2/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class NewAccountNavigationController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func onSignupTap(sender: AnyObject) {
        let nc = self.storyboard?.instantiateViewControllerWithIdentifier("signupNav")
        self.navigationController?.pushViewController(nc!, animated: true)
    }
    
    @IBAction func onSigninTap(sender: AnyObject) {
        let nc = self.storyboard?.instantiateViewControllerWithIdentifier("signinnav")
        self.navigationController?.pushViewController(nc!, animated: true)
    }
}
