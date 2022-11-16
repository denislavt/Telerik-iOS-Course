//
//  BookDictionaryExtension.swift
//  HttpDemos
//
//  Created by Denislav Todorov on 15.11.22.
//

import Foundation


extension Book {
    convenience init(withDict dict: Dictionary<String, Any>){
        let id = dict["id"] as! String
        let title = dict["title"] as! String
        let bookDescription = dict["description"] as! String
        self.init(withId: id,title: title, andDescription: bookDescription)
    }
}
