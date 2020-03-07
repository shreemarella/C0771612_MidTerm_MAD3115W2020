//
//  Extensions.swift
//  C0771612_MidTerm_MAD3115W2020
//
//  Created by Shree Marella on 2020-03-07.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import Foundation


extension String
{
    func validEmail() -> Bool
    {
        let emailRegEx = "[A-Z0-9a-z.%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    
    func validMobile() -> Bool
    {
        let mobileNumberRegEx = "[0-9]{10}"
        let mobileTest = NSPredicate(format: "SELF MATCHES %@", mobileNumberRegEx)
        return mobileTest.evaluate(with: self)
    }
}


//References
//
//Email & Phone Validation in Swift
//
//https://stackoverflow.com/questions/27998409/email-phone-validation-in-swift

