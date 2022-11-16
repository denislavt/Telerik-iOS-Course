//
//  CustomCellsTableViewController.swift
//  CustomViewsDemos
//
//  Created by Denislav Todorov on 16.11.22.
//

import UIKit

class CustomCellsTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cellNib = UINib(nibName: "ImageAndTextTableViewCell", bundle: nil)
        
        self.tableView.register(cellNib, forCellReuseIdentifier: "my-cell")
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 15
    }
    
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
     let cell = tableView.dequeueReusableCell(withIdentifier: "my-cell", for: indexPath) as! ImageAndTextTableViewCell
         
         cell.theLabel?.text = "Value \(indexPath.row)"
         
         
         let imageUrl = "https://i.insider.com/59f1e2b61f58cc4c008b458a?width=700"
         
//             let imageData = try Data(contentsOf: URL(string: imageUrl)!)
//             let myImage = UIImage(data: imageData)
             cell.theImage.imageUrl = imageUrl
         
     
     return cell
     }
     
    
}
