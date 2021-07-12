//
//  NYTAPI.swift
//  HealthView
//
//  Created by Nicole Mellert on 7/7/21.
//

import Foundation
import Alamofire

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

                            //Now we have array of dictionaries
                            // accessing array index 0 and dictionary key "short_url"
                            // upwrapping Optional with !
      //                      var temp = (results[0]["short_url"]!)
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

