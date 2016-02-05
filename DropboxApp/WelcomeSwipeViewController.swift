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
        // Dispose of any resources that can be recreated.
    }

  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
