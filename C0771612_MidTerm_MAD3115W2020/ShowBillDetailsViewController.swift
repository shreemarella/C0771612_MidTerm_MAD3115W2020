//
//  ShowBillDetailsViewController.swift
//  C0771612_MidTerm_MAD3115W2020
//
//  Created by Shree Marella on 2020-03-07.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import UIKit

class ShowBillDetailsViewController: UIViewController {
   
    @IBOutlet weak var lblCustID: UILabel!
    @IBOutlet weak var lblCustFName: UILabel!
    @IBOutlet weak var lblCustLName: UILabel!
    @IBOutlet weak var lblCustEmail: UILabel!
    var customer : Customer?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.lblCustID.text = customer?.customerId
        self.lblCustFName.text = customer?.firstName
        self.lblCustLName.text = customer?.lastName
        self.lblCustEmail.text = customer?.emailId
              
    }
    
    @IBAction func btnShowBills(_ sender: UIButton)
    {
        if customer?.billsD.count != 0
            {
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let DetailedBillVC = sb.instantiateViewController(identifier: "DetailedBillVC") as BillDetailViewController
            DetailedBillVC.customer = self.customer
            navigationController?.pushViewController(DetailedBillVC, animated: true)
            }
            else
            {
                showAlertMessage(message: "No Bills Foundfor this Customer")
            }
            
            
        }
        
        func showSelectedCustomerDetails()
        {
            guard let customerID = self.customer?.customerId
                else
            {
                return
            }
            guard let customerFName = self.customer?.firstName
                else
            {
                return
            }
            guard let customerLName = self.customer?.lastName
                else
            {
                return
            }
            
            guard let customerEmail = self.customer?.emailId
                else
            {
                return
            }
            
            lblCustID.text = "ID : \(customerID)"
            lblCustFName.text = "FirstName : \(customerFName)"
            lblCustLName.text = "LastName : \(customerLName)"
            lblCustEmail.text = "Email ID : \(customerEmail)"
            
        }
    func showAlertMessage(message: String)
    {
        let alert = UIAlertController(title: "Wrong Input", message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true)
        
    }
    
    }
    

