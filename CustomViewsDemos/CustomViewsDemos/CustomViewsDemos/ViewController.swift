//
//  ViewController.swift
//  CustomViewsDemos
//
//  Created by Denislav Todorov on 16.11.22.
//

import UIKit
//draw it any time when the view is changed
//class MyView: UIView {
//    override func draw(_ rect: CGRect) {
//
//    }
//}


class ViewController: UIViewController {
    var rect: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.rect = UIView(frame: CGRect(x: 10, y: 10, width: 150, height: 150))
        self.rect?.backgroundColor = .black
        self.rect?.layer.cornerRadius = 5
        self.rect?.layer.borderColor = UIColor.yellow.cgColor
        self.rect?.layer.borderWidth = 5
        self.view.addSubview(self.rect!)
    }


}

