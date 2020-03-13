//
//  Hydro.swift
//  C0771612_MidTerm_MAD3115W2020
//
//  Created by Shree Marella on 2020-03-13.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import Foundation

class Hydro : Bills
{
    var agencyName : String
    var unitsConsumed : Double
    var ratePerUnit : Double = 15.5
    
     init(billID: String, billDate: Date, billType: BillType, agencyName: String,unitsConsumed: Double)
    {
        self.agencyName = agencyName
        self.unitsConsumed = unitsConsumed
        super.init(billID: billID, billDate: billDate, billType: billType)
        self.billAmount = caluclateTotalBill()
    }
    override func caluclateTotalBill() -> Double {
        self.billAmount = unitsConsumed*ratePerUnit
        return billAmount
    }
    
}
