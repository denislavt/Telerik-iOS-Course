//
//  AnimalExtension.swift
//  OopDemos
//
//  Created by Denislav Todorov on 12.11.22.
//

import Foundation

extension Animal {
    convenience init(withDict dict: Dictionary<String, Any>) {
        let name:String = "\(String(describing: dict["name"]))"
        let age: Int = dict["age"] as! Int
        self.init(withName: name,
                  andAge: age)
    }
    
    static func fromDict(dict: Dictionary<String, Any>) ->
    Animal {
        return Animal(withDict: dict)
    }
    
    func toDict() -> Dictionary<String, Any>{
        let dict:Dictionary<String, Any> = [
            "name": self.name,
            "age": self.age
        ]
        
        return dict
    }
//    func toDict() {
//        return [
//            "name": self.name,
//            "age": self.age
//        ]
//    }
}
