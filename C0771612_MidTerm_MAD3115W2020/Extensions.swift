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
    
    extension Date
    {
        public func getForamttedDate() -> String
        {
            let dateFormatterPrint = DateFormatter()
            dateFormatterPrint.dateFormat = "EEEE, dd MMMM, yyyy"
            let formattedDate = dateFormatterPrint.string(from: self)
            return formattedDate
        }
        
        static func from(year: Int, month: Int, day: Int) -> Date?
        {
            let calendar = Calendar(identifier: .gregorian)
            var dateComponents = DateComponents()
            dateComponents.year = year
            dateComponents.month = month
            dateComponents.day = day
            return calendar.date(from: dateComponents) ?? nil
        }
}


//References
//
//Email & Phone Validation in Swift
//
//https://stackoverflow.com/questions/27998409/email-phone-validation-in-swift


