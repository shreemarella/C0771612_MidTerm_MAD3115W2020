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
        var c1=Customer(customerId: "C001", firstName: "Shree", lastName: "Marella", emailId: "Shree.Marella@gmail.com")
        var c2=Customer(customerId: "C002", firstName: "Shreya", lastName: "vaghasiya", emailId: "Shreyavaghasiya@gmail.com")
        var c3=Customer(customerId: "C003", firstName: "Kasyap", lastName: "jhaveri", emailId: "kasyap@gmail.com")
        var c4=Customer(customerId: "C004", firstName: "Charmi", lastName: "Patel", emailId: "Charmi@gmail.com")
        var c5=Customer(customerId: "C005", firstName: "Avani", lastName: "Patel", emailId: "Avani@gmail.com")
        
        var m1 = Mobile(billID: "MOB001", billDate: Date.from(year: 2019, month: 10, day: 24) ?? Date(), billType: BillType.MOBILE, mobileManufacturerName: "Galaxy Samsung", planName: "Prepaid Talk + Text plan", mobileNumber: "+1(567)-305-8907", internetGbUsed: 9.0, minutesUsed: 498)
        var m2 = Mobile(billID: "MOB002", billDate: Date.from(year: 2019, month: 06, day: 06) ?? Date(), billType: BillType.MOBILE, mobileManufacturerName: "Apple", planName: "Prepaid + Text plan", mobileNumber: "8199210696", internetGbUsed: 7.5, minutesUsed: 420)
        
        var i1 = Internet(billID: "INT001", billDate: Date.from(year: 2019, month: 09, day: 15) ?? Date(), billType: BillType.INTERNET, providerName: "FREEDOM", internetGbUsed: 450.0)
        var i2 = Internet(billID: "INT002", billDate: Date.from(year: 2018, month: 10, day: 19) ?? Date(), billType: BillType.INTERNET, providerName: "ROGER", internetGbUsed: 420)
        var i3 = Internet(billID: "INT003", billDate: Date.from(year: 2019, month: 11, day: 25) ?? Date(), billType: BillType.INTERNET, providerName: "Bell", internetGbUsed: 290)

            var h1 = Hydro(billID: "HYD001", billDate: Date.from(year: 2018, month: 12, day: 30) ?? Date(), billType: BillType.HYDRO, agencyName: "Planet Energy", unitsConsumed: 50)
            var h2 = Hydro(billID: "HYD002", billDate: Date.from(year: 2019, month: 12, day: 12) ?? Date(), billType: BillType.HYDRO, agencyName: "Planet Energy", unitsConsumed: 75)
            
            func loadData()
            {
                
                c1.addBill(bill: m1, billID: m1.billID)
                c1.addBill(bill: i1, billID: i1.billID)
                c1.addBill(bill: h1, billID: h1.billID)
                
                c2.addBill(bill: m2, billID: m2.billID)
                c2.addBill(bill: i2, billID: i2.billID)
                
                c3.addBill(bill: h1, billID: h1.billID)
                c3.addBill(bill: h2, billID: h2.billID)
                
                c4.addBill(bill: i3, billID: i3.billID)
                
               // c5.addBill(bill: h2, billID: h2.billID)
                
                custList.updateValue(c1, forKey: c1.customerId)
                custList.updateValue(c2, forKey: c2.customerId)
                custList.updateValue(c3, forKey: c3.customerId)
                custList.updateValue(c4, forKey: c4.customerId)
                custList.updateValue(c5, forKey: c5.customerId)
                }
        
    }

