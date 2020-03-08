//
//  AddCustomerTableViewController.swift
//  C0771612_MidTerm_MAD3115W2020
//
//  Created by Shree Marella on 2020-03-07.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import UIKit

class AddCustomerViewController: UIViewController
{
    @IBOutlet weak var txtCustomerID: UITextField!
    
    @IBOutlet weak var txtCustomerFirstName: UITextField!
    
    @IBOutlet weak var txtCustomerLastName: UITextField!
    
    @IBOutlet weak var txtCustomerEmailID: UITextField!
    
    
    var newCustomer : [Customer] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

     func numberOfSections(in tableView: UITableView) -> Int {
       
        return 0
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
    }

    @IBAction func btnSaveRecord(_ sender: UIButton)
    {
        let newCustomerId = txtCustomerID.text ?? ""
        let newCustomerFirstName = txtCustomerFirstName.text ?? ""
        let newCustomerLastName = txtCustomerLastName.text ?? ""
        let newCustomerEmailId = txtCustomerEmailID.text ?? ""
        
        if txtCustomerID.text == ""
        {
            AlertMessage(message: "Enter Valid customer ID")
        }
        else if txtCustomerFirstName.text == ""
        {
           AlertMessage(message: "Enter Customer First name ")
        }
        else if txtCustomerLastName.text == ""
        {
            AlertMessage(message: "Enter Customer Last name")
        }
        else if txtCustomerEmailID.text == "" || txtCustomerEmailID.text?.validEmail() == false
        {
            AlertMessage(message: "Enter Valid Customer  EmailID")
        }
        else
        {
            DataRepoSingleton.getInstance().addCustomer(customer: Customer(customerId: newCustomerId, firstName: newCustomerFirstName, lastName: newCustomerLastName, emailId: newCustomerEmailId))
        }
    }
    func AlertMessage(message: String)
    {
        let alert = UIAlertController(title: "Wrong Input", message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
}
