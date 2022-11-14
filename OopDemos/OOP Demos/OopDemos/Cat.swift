//
//  Cat.swift
//  OopDemos
//
//  Created by Denislav Todorov on 12.11.22.
//

import Foundation

enum Gender {
    case male
    case female
    case other
}

class Cat: Animal {
    var gender: Gender
    
    init(withName name: String,
         age: Int,
         andGender gender: Gender){
        
        self.gender = gender
        super.init(withName: name, andAge: age)
        
        }
    
    override func sayName() {
        print("mau")
        super.sayName()
        
    }
    
}

class WildCat : Cat {
    
}
