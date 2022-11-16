//
//  AddBookModalViewController.swift
//  HttpDemos
//
//  Created by Denislav Todorov on 16.11.22.
//

import UIKit

class AddBookModalViewController: UIViewController {

    @IBOutlet weak var textTitle: UITextField!
    @IBOutlet weak var textDescription: UITextView!
    
    @IBAction func save() {
        let title = self.textTitle.text
        let discription = self.textDescription.text
        print(title)
        print(description)
        self.dismiss(animated: true)
    }
    
    @IBAction func cancel() {
        self.dismiss(animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
