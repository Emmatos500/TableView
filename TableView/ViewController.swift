//
//  ViewController.swift
//  TableView
//
//  Created by Emmett Kennedy on 7/22/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var tableViewCell: UITableView!
    
    

    


        var items = ["Gummy Bears", "Eggs", "Steak"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewCell.dataSource = self
        tableViewCell.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)->Int{
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 =  tableView.dequeueReusableCell(withIdentifier: "cell1")
        cell1?.textLabel?.text = items[indexPath.row]
        
        return cell1!
    }
}

