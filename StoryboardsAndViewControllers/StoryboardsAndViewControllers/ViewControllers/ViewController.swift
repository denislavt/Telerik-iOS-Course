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
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textFieldMessage.text = "I am sample text"
        
//        self.button.addTarget(self, action: #selector(ViewController.changeText(_:)), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func changeText(_ sender: UIButton) {
        let message = self.textFieldMessage.text
        self.labelMessage.text = message
        
        let alert = UIAlertController(title: "New Message", message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default) { (action) in
            print("Ok")
        }
        //let cancelAction = UIAlertAction(title: "Cancel", style: .cancel){(action) in {
//            print("Cancel")
//        }
            alert.addAction(okAction)
           // alert.addAction(cancelAction)
            
        }
        
       // self.present(alert, animated: true, completion: nil)
       // let weakAlert = alert
        //alert.addAction(UIAction)

//        self.present(alert, animated: true) {
//            alert.dismiss(animated: true, completion: nil)
        }




