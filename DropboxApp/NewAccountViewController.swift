//
//  NewAccountViewController.swift
//  DropboxApp
//
//  Created by Ashkhen Sargsyan on 2/2/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class NewAccountViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var imageLabel: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstNameTextField.becomeFirstResponder()
        
        self.firstNameTextField.delegate = self
        self.lastNameTextField.delegate = self
        self.emailTextField.delegate = self
        self.passwordTextField.delegate = self
        
        firstNameTextField.returnKeyType = .Next
        lastNameTextField.returnKeyType = .Next
        emailTextField.returnKeyType = .Next
        passwordTextField.returnKeyType = .Go
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func onCreateTap(sender: AnyObject) {
        pushToNextScreen()
    }
   
    @IBAction func onWelcomeTap(sender: AnyObject) {
        navigationController?.popToRootViewControllerAnimated(true)
    }
    
    @IBAction func onPasswordEditingChanged(sender: AnyObject) {
        if passwordTextField.text!.characters.count == 0 {
            imageLabel.image = nil
        }
        else if passwordTextField.text!.characters.count == 1 {
            imageLabel.image = UIImage(named: "signup_1")
        }
        else if passwordTextField.text!.characters.count == 3 {
            imageLabel.image = UIImage(named: "signup_2")
        }
        else if passwordTextField.text!.characters.count == 5 {
            imageLabel.image = UIImage(named: "signup_3")
        }
        else if passwordTextField.text!.characters.count >= 7 {
            imageLabel.image = UIImage(named: "signup_4")
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        switch textField {
        case firstNameTextField:
            lastNameTextField.becomeFirstResponder()
            break
        case lastNameTextField:
            emailTextField.becomeFirstResponder()
            break
        case emailTextField:
            passwordTextField.becomeFirstResponder()
            break
        case passwordTextField:
            passwordTextField.endEditing(false)
            pushToNextScreen()
            break
        default:
            firstNameTextField.becomeFirstResponder()
        }
        
        return true
    }
    
    func pushToNextScreen() {
        let vc = storyboard?.instantiateViewControllerWithIdentifier("finalNewAcount")
        presentViewController(vc!, animated: true, completion: nil)
    }
}
