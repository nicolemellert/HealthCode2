//
//  DetailViewController.swift
//  HealthCode2
//
//  Created by Nicole Mellert on 7/12/21.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var articleTitle: UILabel!
    
    var index: Int!
    var record:[String:Any]?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let myTitle = record?["title"] as? String{
            articleTitle.text = myTitle
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
 */
}
