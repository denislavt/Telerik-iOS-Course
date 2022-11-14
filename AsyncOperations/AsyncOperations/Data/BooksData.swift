//
//  BooksData.swift
//  AsyncOperations
//
//  Created by Denislav Todorov on 14.11.22.
//

import UIKit

class BooksData {
    var books: [Book]  = [Book(title: "Harry Potter and the Sorc. Stone", bookDescription: "Book 1"),
                           Book(title: "Harry Potter and the Chamber of Secrets", bookDescription: "Book 2")]

    
    func getAllWithCompletionCallback(_ callback: @escaping (_ books: [Book]) -> Void) {
        let timeout = DispatchTime.now() + .seconds(3)
        
        weak var weakSelf = self
        
        DispatchQueue.main.asyncAfter(deadline: timeout) {
            callback((weakSelf?.books)!)
        }
        
    }
    
//    func getAll() {
//        weak var weakSelf = self
//        self.getAllWithCompletionCallback { (books) in }
//    }
}
