//
//  ViewController.swift
//  swift-networking-alamofire-test
//
//  Created by Zhaonan Li on 11/2/16.
//  Copyright © 2016 Zhaonan Li. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = "https://httpbin.org/get"
        Alamofire.request(url, method: .get).responseJSON { response in
            
            print ("-------------------------------------------------------------------------------------")
            print ("request=\(response.request)") // original URL request
            print ("response=\(response.response)") // HTTP URL response
            
            print ("status code=\(response.response?.statusCode)")
            
            print ("data=\(response.data)") // server data
            print ("result=\(response.result)") // result of response serialization
            print ("-------------------------------------------------------------------------------------")
            
            if let json = response.result.value {
                print ("The JSON=\(json)")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

