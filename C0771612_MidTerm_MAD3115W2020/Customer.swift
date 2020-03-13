//
//  Customer.swift
//  C0771612_MidTerm_MAD3115W2020
//
//  Created by Shree Marella on 2020-03-07.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import Foundation

class Customer
{
    var customerId : String
    var firstName : String
    var lastName : String
    var fullName : String
    {
        return  " \(firstName) \(lastName)"
    }
    var emailId : String
    var totalBillToPay : Double = 0.0
    lazy var billsD = [String : Bills]()
    
    
    init(customerId : String, firstName : String, lastName : String, emailId : String)
    {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        self.emailId = emailId
    }
    
    
    
    
}
