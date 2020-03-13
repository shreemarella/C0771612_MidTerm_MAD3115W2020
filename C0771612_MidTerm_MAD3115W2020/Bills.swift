//
//  Bills.swift
//  C0771612_MidTerm_MAD3115W2020
//
//  Created by Shree Marella on 2020-03-12.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import Foundation

enum BillType
{
    case HYDRO,INTERNET,MOBILE
}

class Bills
{
    
    var billID : String
    var billDate : Data
    var billType : BillType
    var billAmount : Double = 0.0
    
    init(billID: String, billDate: Data, billType: BillType)
    {
        self.billID = billID
        self.billDate = billDate
        self.billType = billType
    }
    
    func caluclateTotalBill() -> Double
    {
        return 0.0
    }
}
