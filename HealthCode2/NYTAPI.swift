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
    
    func getBase(){
        AF.request(endpoint).responseJSON { response in
            
            switch response.result {
                    case .success(let value):
                        print("OK")
                        
                        if let json = value as? [[String: Any]] {
                            
                            print(json[0]["Result"] as? Int)
                        }
                    case .failure(let error):
                        print("fail")
                    }
      }
        

    }
    
}


// does the info in this class go within the NYTAPI
/*
class Servive {
    fileprivate var baseUrl = ""
    
    init(baseUrl: String) {
        self.baseUrl = baseUrl
    }
    
    func getHealthArticlesFrom(endPoint:String) {
        AF.request(self.baseUrl + endPoint, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).response {
            (responseData) in
            print("We got the response")
        }
    }
 }
*/

