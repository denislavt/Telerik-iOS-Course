//
//  main.swift
//  OopDemos
//
//  Created by Denislav Todorov on 12.11.22.
//

import Foundation


typealias A = Animal
typealias AnyObject = Any
//ne e jelatelno da se polzvat


//polymorfism
//class DerivedAnimal: Animal {
//
//}
//
//let animals: [Animal] = [
//    Animal(),
//    DerivedAnimal(),
//    Cat(withName: "Gosho", age: 3,
//        andGender:
//            .female)
//]
//
//for a in animals {
//    a.sayName()
//}
//
//
//let cat = Cat(withName: "Stamat",
//              age: 2,
//              andGender: .male)
//
//cat.sayName()

//let mauables: [Mauable] = [
//    Cat(withName: "Gosho", age: 3, andGender: .male),
//    WildCat(withName: "Goshka", age: 4, andGender: .female)
//]

let animal = Cat(withName: "pesho", age: 3, andGender: .male)


animal.toDict()
