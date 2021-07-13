//
//  ViewController.swift
//  HealthCode2
//
//  Created by Nicole Mellert on 7/9/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var index:Any
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder) has not been implemented")
    }
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.

        let api = NYTAPI()
        api.getBase()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = "This is row \(indexPath.row + 1)"
       
        return cell
    }
   
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell

        // Configure YourCustomCell using the outlets that you've defined.

        return cell
    }
    
    
}


