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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
