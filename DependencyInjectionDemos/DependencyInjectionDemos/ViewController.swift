//
//  ViewController.swift
//  DependencyInjectionDemos
//
//  Created by Denislav Todorov on 17.11.22.
//

import UIKit

class ViewController: UIViewController, HttpRequesterDelegate {
    var httpRuquester: HttpRequester?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.httpRuquester = HttpRequester()//not easy testable
        
        // Do any additional setup after loading the view.
    }
    
    func didCompleteGet(result: Any) {
        print(result)
    }

}

