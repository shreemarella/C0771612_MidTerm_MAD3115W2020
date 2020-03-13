//
//  Internet.swift
//  C0771612_MidTerm_MAD3115W2020
//
//  Created by Shree Marella on 2020-03-12.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import Foundation


class Internet : Bills
{
    var providerName : String
    var internetGbUsed : Double
    var ratePerGb : Double = 5.0
     init(billID: String, billDate: Date, billType: BillType,providerName: String, internetGbUsed : Double)
    {
        self.providerName = providerName
        self.internetGbUsed = internetGbUsed
        super.init(billID: billID, billDate: billDate, billType: billType)
        self.billAmount = caluclateTotalBill()
    }
    
    override func caluclateTotalBill() -> Double
    {
        self.billAmount = internetGbUsed*ratePerGb
        return billAmount
    }
    
}
