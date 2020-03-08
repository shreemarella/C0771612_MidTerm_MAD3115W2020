//
//  CustomerListTableViewController.swift
//  C0771612_MidTerm_MAD3115W2020
//
//  Created by Shree Marella on 2020-03-07.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import UIKit

class CustomerListTableViewController: UIViewController {
    @IBOutlet var tblvcCustomerList: UITableView!
    
    var customerNames : [Customer] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        customerNames = DataRepoSingleton.getInstance().getAllCustomers()
        let userDefault = UserDefaults.standard

    
    }
}

extension CustomerListTableViewController: UITableViewDataSource, UITableViewDelegate

{

    func numberOfSections(in tableView: UITableView) -> Int
    {
      return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
      return customerNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
      let cell = tableView.dequeueReusableCell(withIdentifier: "CustomerCell")
      let customer = customerNames[indexPath.row]
      cell?.textLabel?.text = customer.fullName
      return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
      let customer = DataRepoSingleton.getInstance().getAllCustomers()
      let selectedCustomer = customer[indexPath.row]
      let sb = UIStoryboard(name: "Main", bundle: nil)
      let BillDetailsVC = sb.instantiateViewController(identifier: "BillDetailsVC") as ShowBillDetailsViewController
      BillDetailsVC.customer = selectedCustomer
      self.navigationController?.pushViewController(BillDetailsVC, animated: true)
    }


}
