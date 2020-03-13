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
        var c1=Customer(customerId: "C001", firstName: "Shree", lastName: "Marella", emailId: "Shree.Marella@gmail.com")
        var c2=Customer(customerId: "C002", firstName: "Shreya", lastName: "vaghasiya", emailId: "Shreyavaghasiya@gmail.com")
        var c3=Customer(customerId: "C003", firstName: "Kasyap", lastName: "jhaveri", emailId: "kasyap@gmail.com")
        var c4=Customer(customerId: "C004", firstName: "Charmi", lastName: "Patel", emailId: "Charmi@gmail.com")
        var c5=Customer(customerId: "C005", firstName: "Avani", lastName: "Patel", emailId: "Avani@gmail.com")
        
        var m1 = Mobile(billID: "MOB001", billDate: Date.from(year: 2019, month: 10, day: 24) ?? Date(), billType: BillType.MOBILE, mobileManufacturerName: "Galaxy Samsung", planName: "Prepaid Talk + Text plan", mobileNumber: "+1(567)-305-8907", internetGbUsed: 9.0, minutesUsed: 498)
        var m2 = Mobile(billID: "MOB002", billDate: Date.from(year: 2019, month: 06, day: 06) ?? Date(), billType: BillType.MOBILE, mobileManufacturerName: "Apple", planName: "Prepaid + Text plan", mobileNumber: "8199210696", internetGbUsed: 7.5, minutesUsed: 420)

        
    }
    
}
