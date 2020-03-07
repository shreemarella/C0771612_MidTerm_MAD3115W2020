//
//  ViewController.swift
//  C0771612_MidTerm_MAD3115W2020
//
//  Created by Shree Marella on 2020-03-07.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var txtfdEmail: UITextField!
    @IBOutlet weak var txtfdPassword: UITextField!
    @IBOutlet weak var sthRememberMe: UISwitch!
    @IBOutlet weak var lblRememberMe: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        RememberMe()
        
    }
    
    private func RememberMe()
    {
        let userDefault = UserDefaults.standard
        
        if let userName = userDefault.string(forKey: "Email")
        {
            txtfdEmail.text = userName
            
            if let passWord = userDefault.string(forKey: "Password")
            {
                txtfdPassword.text = passWord
            }
        }
        
    }

    @IBAction func btnLogin(_ sender: UIButton)
    {
        if self.txtfdEmail.text == "Shree.Marella@gmail.com" && self.txtfdPassword.text == "Shree696"
        {
            let userDefault = UserDefaults.standard
            if sthRememberMe.isOn
            {
                userDefault.setValue(txtfdEmail.text, forKey: "Email")
                userDefault.set(txtfdPassword.text, forKey: "Password")
            }
            else
            {
                userDefault.removeObject(forKey: "Email")
                userDefault.removeObject(forKey: "Password")
            }
        }
        else
        {
            if self.txtfdEmail.text == " "
            {
                alertMessage(message: "Empty Field")
            }
            else if self.txtfdPassword.text == " "
            {
                alertMessage(message: "Empty Field")
            }
            else
            {
                alertMessage(message: "Enter Vaild Email ID or Password")
                
            }
        }
    }
    
    func alertMessage(message : String)
    {
        
        let alertController = UIAlertController(title: "Wrong Input", message: "Check Your Email Or Password", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Invalid Email Or Password", style: .default))

        self.present(alertController, animated: true, completion: nil)
        
    }
    
}

