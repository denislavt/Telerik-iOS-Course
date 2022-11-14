//
//  SampleModalViewController.swift
//  StoryboardsAndViewControllers
//
//  Created by Denislav Todorov on 14.11.22.
//

import UIKit

class SampleModalViewController: UIViewController {
    
    var label: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.label = UILabel(frame: CGRect(x: 100, y: 100, width: 200, height: 100))
        self.label?.text = "It works"
        
        self.view.addSubview(self.label!)
    
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ok() {
        self.dismiss(animated: true)
    }
    
    @IBAction func cancel() {
        self.dismiss(animated: true)
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
