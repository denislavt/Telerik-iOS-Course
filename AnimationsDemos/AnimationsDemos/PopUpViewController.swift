//
//  PopUpViewController.swift
//  AnimationsDemos
//
//  Created by Denislav Todorov on 18.11.22.
//

import UIKit

class PopUpViewController: UIViewController {
    
    var animator: UIDynamicAnimator?
    var gravity: UIGravityBehavior?
    var collision: UICollisionBehavior?
    
    var buttonShowPopUp: UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.buttonShowPopUp = UIButton(frame: CGRect(x: self.view.bounds.width/2, y: 20, width: 200, height: 50))
        self.buttonShowPopUp?.titleLabel?.text = "Show Popup"
        self.buttonShowPopUp?.backgroundColor = .red
        
        self.buttonShowPopUp?.addTarget(self, action: #selector(showPopup), for: .touchUpInside)
        
        self.view.addSubview(self.buttonShowPopUp!)
    }
    
    @objc func showPopup(){
        print("tapped")
    }

}
