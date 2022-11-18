//
//  ViewController.swift
//  MvcDemos
//
//  Created by Denislav Todorov on 18.11.22.
//

import UIKit

protocol BaseControllerView{
    var delegate: Any{get set}
}



class MvcView: UIView, BaseControllerView {
    var delegate: BaseMvcController?
    
}

protocol BaseMvcController {
    var view:BaseMvcView? {get set}
}

class MvcController: BaseMvcController {
    var view: BaseMvcController?
}


class Controller: UIViewController {
    var mvcView: BaseMvcView?
    var mvcController: BaseMvcController?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mvcView = MvcView(frame: self.view.frame)
        self.mvcController = MvcController(withView: self.mvcView)
        self.view.addSubview(self.mvcView)
        //self.mainView?.addSubview(self.mainView)
        
        // Do any additional setup after loading the view.
    }


}

