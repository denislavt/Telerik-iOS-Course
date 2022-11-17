//
//  Data.swift
//  UnitTestingBasic
//
//  Created by Denislav Todorov on 18.11.22.
//

import UIKit

protocol StringsDataDelegate {
    func didReceiveData(data: Any)
    func didAddItem()
}

class StringsData {
    var delegate: StringsDataDelegate?
    var items:[String]?
    
    init() {
        self.items = []
    }
    
    func getAll() {
        self.delegate?.didReceiveData(data: items!)
    }
    
    func add(item: String) {
        self.items?.append(item)
        self.delegate?.didAddItem()
    }
}
