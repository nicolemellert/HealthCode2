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
    
    @IBOutlet weak var imagePreview: UIImageView!
    
    var myArticle = [String:Any?]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.articleTitle.text = self.myArticle["title"] as? String
        self.authorByLine.text = self.myArticle["byline"] as? String
        self.abstract.text = self.myArticle["abstract"] as? String
        let multimediaArray = myArticle["multimedia"] as! [[String:Any]]
        let photo = multimediaArray[0]["url"]!


        self.imagePreview.populateUIImageViewWithImageFromURL(urlString: photo as! String)
        
        
        // overrideUserInterfaceStyle is available with iOS 13
        if #available(iOS 13.0, *) {
            // Always adopt a light interface style.
            overrideUserInterfaceStyle = .light
        }
        
    }
    
}


extension UIImageView{
    
    func populateUIImageViewWithImageFromURL(urlString: String){
        
        let imageUrl:URL = URL(string: urlString)!
        
         DispatchQueue.global(qos: .userInitiated).async {
            
            let imageData:NSData = NSData(contentsOf: imageUrl)!

           DispatchQueue.main.async {
            if let image = UIImage(data: imageData as Foundation.Data){
                self.image = image
               self.contentMode = UIView.ContentMode.scaleAspectFit
            }
            }
        }
    }
    
    
}

