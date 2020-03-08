//
//  DataRepoSingleton.swift
//  C0771612_MidTerm_MAD3115W2020
//
//  Created by Shree Marella on 2020-03-07.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import Foundation

class DataRepoSingleton
{
    private static let singletonInstance = DataRepoSingleton()
    private lazy var custList: [String: Customer] = [:]
    private init(){}
    
    static func
    getInstance() -> DataRepoSingleton
    {
        return singletonInstance
    }
    
    func addCustomer(customer: Customer)
    {
        self.custList.updateValue(customer, forKey: customer.customerId)
    }
    
    func getAllCustomers() -> [Customer]
    {
        return Array(custList.values)
        
    }
    
    func loadData()
    {
        custList.updateValue(Customer(customerId: "C001", firstName: "Shree", lastName: "Marella", emailId: "Shree.Marella@gmail.com"),forKey: "C001")
        custList.updateValue(Customer(customerId: "C002", firstName: "Shreya", lastName: "vaghasiya", emailId: "Shreyavaghasiya@gmail.com"),forKey: "C002")
        custList.updateValue(Customer(customerId: "C003", firstName: "Kasyap", lastName: "jhaveri", emailId: "kasyap@gmail.com"),forKey: "C003")
        custList.updateValue(Customer(customerId: "C004", firstName: "Charmi", lastName: "Patel", emailId: "Charmi@gmail.com"),forKey: "C004")
        custList.updateValue(Customer(customerId: "C005", firstName: "Avani", lastName: "Patel", emailId: "Avani@gmail.com"),forKey: "C005")
    }
    
}
