//
//  ViewController.swift
//  HealthCode2
//
//  Created by Nicole Mellert on 7/9/21.
//

import UIKit

protocol tocUpdatedDelegate {
    func tocUpdated(toc: [[String:Any]])
}

class ViewController: UIViewController, tocUpdatedDelegate, UITableViewDataSource, UITableViewDelegate {
    
    let api = NYTAPI()
    var toc = [[String:Any]]()
    var record = [String:Any]()
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
    
            // overrides dark mode for iOS 13 and on
            if #available(iOS 13.0, *) {
                // Always adopt a light interface style.
                overrideUserInterfaceStyle = .light
            }

        api.getBase(delegate:self)
        self.tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return api.toc.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = self.toc[indexPath.row]["title"] as? String

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        self.record = self.toc[indexPath.row]
        self.performSegue(withIdentifier: "ToDetailSegue", sender: self)
        
    }

    // adds segue to DetailViewController when tableview cell is clicked
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ToDetailSegue" {
            if let controller = segue.destination as? DetailViewController {
                    controller.myArticle =  self.record
                }
            }
        
        
    }
    
    func tocUpdated(toc: [[String:Any]]){
        self.toc = toc;
        self.tableView.reloadData()
    }
}


