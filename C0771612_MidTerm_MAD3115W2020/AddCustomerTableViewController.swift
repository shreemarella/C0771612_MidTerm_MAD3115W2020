//
//  AddCustomerTableViewController.swift
//  C0771612_MidTerm_MAD3115W2020
//
//  Created by Shree Marella on 2020-03-07.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import UIKit

class AddCustomerTableViewController: UITableViewController
{
    @IBOutlet weak var txtCustomerID: UITextField!
    
    @IBOutlet weak var txtCustomerFirstName: UITextField!
    
    @IBOutlet weak var txtCustomerLastName: UITextField!
    
    @IBOutlet weak var txtCustomerEmailID: UITextField!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
    }

    @IBAction func btnSaveRecord(_ sender: UIButton) {
    }
    
}
