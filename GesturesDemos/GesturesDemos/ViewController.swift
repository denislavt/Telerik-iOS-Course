//
//  ViewController.swift
//  GesturesDemos
//
//  Created by Denislav Todorov on 18.11.22.
//

import UIKit

class ViewController: UIViewController {

    var rect: UIView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.rect = UIView(frame: CGRect(x: self.view.frame.width/2,
                                        y: self.view.frame.height/2,
                                        width: 50,
                                        height: 50))
        
        self.view.addSubview(self.rect!)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func methodMove(_ sender: UIPanGestureRecognizer) {
        let location = sender.location(in: self.view)
        print(location)
    }

}

