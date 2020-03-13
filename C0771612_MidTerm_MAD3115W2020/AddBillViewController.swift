//
//  AddBillViewController.swift
//  C0771612_MidTerm_MAD3115W2020
//
//  Created by Shree Marella on 2020-03-13.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import UIKit

class AddBillViewController: UIViewController, UITextFieldDelegate
{
    var customer : Customer?
    @IBOutlet weak var txtfBillId: UITextField!
    @IBOutlet weak var segmentBillTVar: UISegmentedControl!
    @IBOutlet weak var txtfBillDate: UITextField!
    @IBOutlet weak var txtfMobileManuName: UITextField!
    @IBOutlet weak var txtfPlanName: UITextField!
    @IBOutlet weak var txtfIntGbUsedInternet: UITextField!
    @IBOutlet weak var txtfMinUsed: UITextField!
    @IBOutlet weak var txtfProviderName: UITextField!
    @IBOutlet weak var txtfMobilenetGbUsed: UITextField!
    @IBOutlet weak var txtfAgencyName: UITextField!
    @IBOutlet weak var txtfUnitsConsumed: UITextField!
    @IBOutlet weak var txtfmobilenumber: UITextField!
    var datePicker: UIDatePicker!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.navigationItem.title = "Add New Bill"
        self.title = "Add New Bill Record"
        txtfBillDate.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.pickUpDate(self.txtfBillDate)
    }
    
    
    func pickUpDate(_ textField: UITextField)
    {
      self.datePicker = UIDatePicker(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 216))
      self.datePicker.backgroundColor = UIColor.white
      self.datePicker.datePickerMode = UIDatePicker.Mode.date
      textField.inputView = self.datePicker
       
      
      let toolBar = UIToolbar()
      toolBar.barStyle = .default
      toolBar.isTranslucent = true
      toolBar.tintColor = .red
      toolBar.sizeToFit()
       
      
      let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(AddBillViewController.doneClick))
      let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
      let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(AddBillViewController.cancelClick))
      toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
      toolBar.isUserInteractionEnabled = true
      textField.inputAccessoryView = toolBar
    }
     
    
    @objc func doneClick()
    {
      let dateformatter1 = DateFormatter()
      dateformatter1.dateStyle = .medium
      dateformatter1.timeStyle = .none
      txtfBillDate.text = dateformatter1.string(from: datePicker.date)
      txtfBillDate.resignFirstResponder()
    }
     
    @objc func cancelClick()
    {
      txtfBillDate.resignFirstResponder()
    }

    @IBAction func segmentBillType(_ sender: UISegmentedControl)
    {
        if sender.selectedSegmentIndex == 0
        {
            txtfBillId.isHidden = false
            txtfBillDate.isHidden = false
            txtfAgencyName.isHidden = false
            txtfUnitsConsumed.isHidden = false
            txtfMobileManuName.isHidden = true
            txtfPlanName.isHidden = true
            txtfIntGbUsedInternet.isHidden = true
            txtfMinUsed.isHidden = true
            txtfProviderName.isHidden = true
            txtfMobilenetGbUsed.isHidden = true
            txtfmobilenumber.isHidden = true
        }
            
        else
        if sender.selectedSegmentIndex == 1
        {
            txtfBillId.isHidden = false
            txtfBillDate.isHidden = false
            txtfAgencyName.isHidden = true
            txtfUnitsConsumed.isHidden = true
            txtfMobileManuName.isHidden = false
            txtfPlanName.isHidden = false
            txtfIntGbUsedInternet.isHidden = true
            txtfMinUsed.isHidden = false
            txtfProviderName.isHidden = true
            txtfMobilenetGbUsed.isHidden = false
            txtfmobilenumber.isHidden = false
            
        }
        else
        if sender.selectedSegmentIndex == 2
        {
            txtfBillDate.isHidden = false
            txtfBillId.isHidden = false
            txtfMobileManuName.isHidden = true
            txtfPlanName.isHidden = true
            txtfMinUsed.isHidden = true
            txtfMobilenetGbUsed.isHidden = true
            txtfAgencyName.isHidden = true
            txtfUnitsConsumed.isHidden  = true
            txtfProviderName.isHidden = false
            txtfIntGbUsedInternet.isHidden = false
            txtfmobilenumber.isHidden = true
        }
    }
    
    
    @IBAction func btnAddBillRecord(_ sender: UIButton)
    {
        
        if segmentBillTVar.selectedSegmentIndex == 0
        {
            let addbillobj = Hydro(billID: txtfBillId.text!, billDate: (txtfBillDate.text?.toDate())!, billType: BillType.HYDRO, agencyName: txtfAgencyName.text!, unitsConsumed: Double(txtfUnitsConsumed.text!) ?? 0.0)
            
            customer?.addBill(bill: addbillobj, billID: txtfBillId.text!)
        }
        else if segmentBillTVar.selectedSegmentIndex == 1
        {
            let addbillobj = Internet(billID: txtfBillId.text!, billDate: (txtfBillDate.text?.toDate())!, billType: BillType.INTERNET, providerName: txtfProviderName.text!, internetGbUsed: Double(txtfIntGbUsedInternet.text!)!)
            
            customer?.addBill(bill: addbillobj, billID: txtfBillId.text!)
        }
        else if segmentBillTVar.selectedSegmentIndex == 2
        {
            let addbillobj = Mobile(billID: txtfBillId.text!, billDate: (txtfBillDate.text?.toDate())!, billType: BillType.MOBILE, mobileManufacturerName: txtfMobileManuName.text!, planName: txtfPlanName.text!, mobileNumber:txtfmobilenumber.text!, internetGbUsed: Double(txtfMobilenetGbUsed.text!)!, minutesUsed: Double(txtfMinUsed.text!)!)
        }
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let DetailedBillVC = sb.instantiateViewController(identifier: "DetailedBillVC") as BillDetailViewController
        DetailedBillVC.customer = self.customer
        navigationController?.pushViewController(DetailedBillVC, animated: true)
         
        
    }
}
