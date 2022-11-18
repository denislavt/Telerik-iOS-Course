//
//  ViewController.swift
//  AnimationsDemos
//
//  Created by Denislav Todorov on 18.11.22.
//

import UIKit

class DynamicBehaviourViewController: UIViewController {
    var tapGesture: UITapGestureRecognizer?
    var animator: UIDynamicAnimator?
    var gravityToRight: UIGravityBehavior?
    var gravityToLeft: UIGravityBehavior?
    var collision: UICollisionBehavior?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tapGesture = UITapGestureRecognizer(target: self, action: #selector(tap))
        self.view.addGestureRecognizer(self.tapGesture!)
        // Do any additional setup after loading the view.
        
        self.gravityToRight = UIGravityBehavior()
        gravityToRight?.angle = 1.25
        
        self.gravityToLeft = UIGravityBehavior()
        gravityToLeft?.angle = 0.75
        
        self.collision = UICollisionBehavior()
        
        
        self.animator = UIDynamicAnimator(referenceView: self.view)
        self.animator?.addBehavior(self.gravityToRight!)
       // self.animator?.addBehavior(self.gravityToLeft!)
        self.collision?.translatesReferenceBoundsIntoBoundary = true
        self.animator?.addBehavior(self.collision!)
        
        //let timeout = DispatchTime.now() + .seconds(3)
        
        self.addRect()
        }
        
    func addRect(){
        let timeout = DispatchTime.now() + .seconds(1)
        DispatchQueue.main.asyncAfter(deadline: timeout) {
            let part = Int(self.view.bounds.width / 10)
            for i in 0 ..< 5 {
                let rect = UIView(frame: CGRect(x: part * i, y: 0, width: 30, height: 30))
                rect.backgroundColor = .red
                self.view.addSubview(rect)
                
                self.gravityToRight?.addItem(rect)
                self.collision?.addItem(rect)
                
            }
            
            for i in 5 ..< 10 {
                let rect = UIView(frame: CGRect(x: part * i, y: 0, width: 30, height: 30))
                rect.backgroundColor = .red
                self.view.addSubview(rect)
                
                self.gravityToLeft?.addItem(rect)
                self.collision?.addItem(rect)
            }
            
            self.addRect()
        }
        
    }

    @objc func tap() {
        print("tapped")
    }
}

