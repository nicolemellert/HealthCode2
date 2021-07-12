//
//  NYTAPI.swift
//  HealthView
//
//  Created by Nicole Mellert on 7/7/21.
//

import Foundation
import Alamofire

struct Data: Codable {
    let short_url : String
    let section : String
    let url : String
    let created_date : String
    let des_facet : String
    let geo_facet : String
    let kicker : String
    let org_facet : String
    let uri : String
    let material_type_facet : String
    let updated_date : String
    let subsection : String
    let abstract : String
    let published_date : String
    let byline : String
    let title : String
    let item_type : String
    let per_facet : String
    let multimedia : String
}

class NYTAPI {
    let endpoint = "https://api.nytimes.com/svc/topstories/v2/health.json?api-key=eAfQI3BIAUG1Cja4EZvUg2j7K2Vm2jFS"
    
    // get other endpoints from NYT
    
    
    func getBase() {
        AF.request(endpoint).responseJSON { response in
            
            switch response.result {

                case .success(let value):
                    if let dictionary = value as? [AnyHashable: Any] {
                        print("Successful dict")
                        print(dictionary["copyright"] as! String)

                        if let results = dictionary["results"] as? [[String:Any]]{
                            // self.myData = results
                            //Now we have array of dictionaries
                            // accessing array index 0 and dictionary key "short_url"
                            // upwrapping Optional with !
                            // var temp = (results[0]["short_url"]!)
                        
                            print(results[0].keys)
                         //   print()
                            //print(results[0].values)
                          //  print()
                           // var title = results[0]["title"]!
                        }
                    }
                    else{
                        print("Data conversion error")
                    }
                case .failure(let error):
                        print(error)
            }
        }
    }
}

