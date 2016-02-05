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
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func onWelcomeTap(sender: AnyObject) {
        navigationController?.popToRootViewControllerAnimated(true)
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        if textField == passwordTextField {
            if passwordTextField.text!.characters.count == 1 {
                let weakPasswordImage = UIImage(named: "signup_1")
                imageLabel.image = weakPasswordImage
            }
            else if passwordTextField.text!.characters.count == 7 {
                let goodPasswordImage = UIImage(named: "signup_2")
                imageLabel.image = goodPasswordImage
            }
            else if passwordTextField.text!.characters.count == 9 {
                let sosoPasswordImage = UIImage(named: "signup_3")
                imageLabel.image = sosoPasswordImage
            }
            else if passwordTextField.text!.characters.count == 15 {
                let strongPasswordImage = UIImage(named: "signup_4")
                imageLabel.image = strongPasswordImage
            }
        }
        return true
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
            performSegueWithIdentifier("GoToTerms", sender: nil)
            break
        default:
            firstNameTextField.becomeFirstResponder()
        }
        
        return true
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
