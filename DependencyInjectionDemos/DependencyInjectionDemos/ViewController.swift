//
//  ViewController.swift
//  DependencyInjectionDemos
//
//  Created by Denislav Todorov on 17.11.22.
//

import UIKit

class ViewController: UIViewController, HttpRequesterDelegate {
    var url: String?
    var httpRuquester: HttpRequesterBase?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.httpRuquester?.get(fromUrl: url!, andHeaders: Dictionary<String, String>? = nil)
        //self.httpRuquester = HttpRequester()//not easy testable
        
        // Do any additional setup after loading the view.
    }
    
    func didCompleteGet(result: Any) {
        print(result)
    }

}

