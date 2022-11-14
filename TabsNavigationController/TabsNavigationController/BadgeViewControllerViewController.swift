//
//  BadgeViewControllerViewController.swift
//  TabsNavigationController
//
//  Created by Denislav Todorov on 14.11.22.
//

import UIKit

class BadgeViewControllerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarItem.badgeValue = "111"
        
        print(self.tabBarItem as Any)
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
