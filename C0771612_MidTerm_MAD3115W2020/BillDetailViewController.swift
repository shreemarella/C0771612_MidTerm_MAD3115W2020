//
//  BillDetailViewController.swift
//  C0771612_MidTerm_MAD3115W2020
//
//  Created by Shree Marella on 2020-03-12.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import UIKit

class BillDetailViewController: UIViewController {

    @IBOutlet weak var tblBillDetailView: UITableView!
    @IBOutlet weak var lblTotalBill: UILabel!
    
    
    var customer : Customer?
    var billsD = [Bills]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.billsD = customer!.getAllbills()
        self.navigationItem.title = "Customer Detailed Bills"
        self.addNewBillButton()
        self.lblTotalBill.text = String(format: "Total Bill $%.2f", customer?.caluclateTotalBill() ?? "" )
    }
    
    private func addNewBillButton()
    {
        let newBillButton = UIBarButtonItem(title: "Add New Bill", style: .plain, target: self, action: #selector(self.addNewBill))
        self.navigationItem.rightBarButtonItem = newBillButton
    }
    
    @objc func addNewBill()
       {
           let sb = UIStoryboard(name: "Main", bundle: nil)
           let addBillVC = sb.instantiateViewController(identifier: "AddBillVC") as! AddBillViewController
           addBillVC.customer = self.customer
           navigationController?.pushViewController(addBillVC, animated: true)
       }

}

extension BillDetailViewController : UITableViewDataSource, UITableViewDelegate
{
    func showAlertMessage(message: String)
    {
        let alert = UIAlertController(title: "Wrong Input", message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return billsD.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
    let cell = tableView.dequeueReusableCell(withIdentifier: "BillTableViewCell") as! BillDetailsTableViewCell
        
        let bill = billsD[indexPath.row]
            
            if bill.billType == .HYDRO
            {
                cell.imgBillType.image = UIImage(named:"hydro-power")
                cell.lblBillId.text = " Bill Id: \(bill.billID)"
                cell.lblBillDate.text = " Bill Date: \(bill.billDate.getForamttedDate())"
                cell.lblBillAmount.text = " Bill Amount: $\(bill.billAmount)"
            }
                
            else if bill.billType == .INTERNET
            {
                cell.imgBillType.image = UIImage(named:"smarthouse")
                cell.lblBillId.text = " Bill Id: \(bill.billID)"
                cell.lblBillDate.text = " Bill Date: \(bill.billDate.getForamttedDate())"
                cell.lblBillAmount.text = " Bill Amount: $\(bill.billAmount)"
            }
                
            else if bill.billType == .MOBILE
            {
                cell.imgBillType.image = UIImage(named:"smartphone")
                cell.lblBillId.text = " Bill Id: \(bill.billID)"
                cell.lblBillDate.text = " Bill Date: \(bill.billDate.getForamttedDate())"
                cell.lblBillAmount.text = " Bill Amount: $\(bill.billAmount)"
            }
            else
            {
                showAlertMessage(message: "No Bills Found")
            }
            return cell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           // let b = bills[indexPath.row]
        }
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return CGFloat(150.0)
        }
        
    }




       

