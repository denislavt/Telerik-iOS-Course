//
//  Animal.swift
//  OopDemos
//
//  Created by Denislav Todorov on 12.11.22.
//

import Foundation

class Animal {
    private var _name: String = ""
    
    var name: String {
        willSet(newName) {
            print("Setting value \(newName)")
        }
        
        didSet(newName) {
            print("Value \(newName) set")
        }
    }
    
    var age: Int = 0
    
    convenience init() {
        self.init(withName: "[Pesho]", andAge: 0)
    }
    
    init(withName name: String, andAge age: Int) {
        self.name = name
        self.age = age
    }
    
    func sayName() {
        print("I am \(self.name)")
    }
}
