//
//  PhotosScrollViewController.swift
//  DropboxApp
//
//  Created by Ashkhen Sargsyan on 2/4/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class PhotosScrollViewController: UIViewController {

    @IBOutlet weak var photoScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoScrollView.contentSize = CGSize(width: 320, height: 1000)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
