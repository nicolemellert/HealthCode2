//
//  DetailViewController.swift
//  HealthCode2
//
//  Created by Nicole Mellert on 7/12/21.
//

import UIKit
import SwiftUI

class DetailViewController: UIViewController {
    
    @IBOutlet weak var articleTitle: UILabel!

    @IBOutlet weak var authorByLine: UILabel!
    
    @IBOutlet weak var abstract: UILabel!
    
    @IBOutlet weak var ImagePreview: UIImageView!
    
    var myArticle = [String:Any?]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
   //     let imageURl = ""

        
        self.articleTitle.text = self.myArticle["title"] as? String
        self.authorByLine.text = self.myArticle["byline"] as? String
        self.abstract.text = self.myArticle["abstract"] as? String
        
        // overrideUserInterfaceStyle is available with iOS 13
        if #available(iOS 13.0, *) {
            // Always adopt a light interface style.
            overrideUserInterfaceStyle = .light
        }
        
    }
}




//extension UIImageView {
//    func load(url: URL) {
//        DispatchQueue.global().async { [weak self] in
//            if let data = try? Data(from: url as! Decoder) as? Foundation.Data {
//                if let image = UIImage(data: data){
//                    DispatchQueue.main.async {
//                        self?.image = image
//                    }
//                }
//            }
//        }
//    }
//}
