//
//  AddBillViewController.swift
//  C0771612_MidTerm_MAD3115W2020
//
//  Created by Shree Marella on 2020-03-13.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import UIKit

class AddBillViewController: UIViewController
{
    var customer : Customer?
    @IBOutlet weak var txtfBillId: UITextField!
    @IBOutlet weak var txtfBillDate: UITextField!
    @IBOutlet weak var txtfMobileManuName: UITextField!
    @IBOutlet weak var txtfPlanName: UITextField!
    @IBOutlet weak var txtfIntGbUsedInternet: UITextField!
    @IBOutlet weak var txtfMinUsed: UITextField!
    @IBOutlet weak var txtfProviderName: UITextField!
    @IBOutlet weak var txtfMobilenetGbUsed: UITextField!
    @IBOutlet weak var txtfAgencyName: UITextField!
    @IBOutlet weak var txtfUnitsConsumed: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.navigationItem.title = "Add New Bill"
        self.title = "Add New Bill Record"
    }

    @IBAction func segmentBillType(_ sender: UISegmentedControl)
    {
        if sender.selectedSegmentIndex == 0
        {
            
            txtfMobileManuName.isHidden = true
            txtfPlanName.isHidden = true
            txtfIntGbUsedInternet.isHidden = true
            txtfMinUsed.isHidden = true
            txtfProviderName.isHidden = true
            txtfMobilenetGbUsed.isHidden = true
        }
        else
        if sender.selectedSegmentIndex == 1
        {
            txtfIntGbUsedInternet.isHidden = true
            txtfProviderName.isHidden = true
            txtfAgencyName.isHidden = true
            txtfUnitsConsumed.isHidden = true
            
        }
        else
        if sender.selectedSegmentIndex == 2
        {
            txtfMobileManuName.isHidden = true
            txtfPlanName.isHidden = true
            txtfMinUsed.isHidden = true
            txtfMobilenetGbUsed.isHidden = true
            txtfAgencyName.isHidden = true
            txtfUnitsConsumed.isHidden  = true
        }
    }
    
    
    @IBAction func btnAddBillRecord(_ sender: UIButton)
    {
        
        
    }
}
