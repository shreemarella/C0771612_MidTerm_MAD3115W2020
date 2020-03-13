//
//  Mobile.swift
//  C0771612_MidTerm_MAD3115W2020
//
//  Created by Shree Marella on 2020-03-12.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import Foundation

class Mobile : Bills
{
       var mobileManufacturerName : String
       var planName               : String
       var mobileNumber           : String
       var internetGbUsed         : Double = 0.0
       var minutesUsed            : Double = 0.0
       var ratePerGb              : Double = 5.0
       var ratePerMinute          : Double = 0.5
    
    init( billID: String, billDate: Date, billType: BillType,  mobileManufacturerName: String,  planName: String,mobileNumber: String, internetGbUsed: Double, minutesUsed: Double)
    {
        self.mobileManufacturerName=mobileManufacturerName
        self.planName=planName
        self.mobileNumber=mobileNumber
        self.internetGbUsed=internetGbUsed
        self.minutesUsed=minutesUsed
        super.init(billID: billID, billDate: billDate, billType: billType)
        self.billAmount = caluclateTotalBill()
    }
    
    override func caluclateTotalBill() -> Double
    {
        self.billAmount = internetGbUsed*ratePerGb + Double(minutesUsed)*ratePerMinute
            
            return billAmount
    
    }
}
