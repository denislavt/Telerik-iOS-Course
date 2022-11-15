//
//  ViewController.swift
//  HttpDemos
//
//  Created by Denislav Todorov on 15.11.22.
//

import UIKit

class ViewController: UIViewController, HttpRequesterDelegate {
    var http: HttpRequester?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.http = HttpRequester()
        self.http?.delegate = self
        self.http?.get(fromUrl: "")
        // Do any additional setup after loading the view.
    }
    
    func didReceiveData(data: Any){
        let arr = data as! [Any]
        arr.forEach() { (item) in
            let dict = item as! Dictionary<String, Any>
            print(dict["title"] as Any)
        }
    }
    
    func didReceiveError(error: Error){
        
    }
}

