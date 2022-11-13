//
//  ViewController.swift
//  StoryboardsAndViewControllers
//
//  Created by Denislav Todorov on 12.11.22.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var textFieldMessage: UITextField!
    @IBOutlet weak var labelMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textFieldMessage.text = "I am sample text"
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func changeText(_ sender: UIButton) {
        var message = self.textFieldMessage.text
        let alert = UIAlertController(title: "New Message", message: message, preferredStyle: .alert)

       // let weakAlert = alert
        //alert.addAction(UIAction)

        self.present(alert, animated: true) {
            alert.dismiss(animated: true, completion: nil)
        }
    }

}

