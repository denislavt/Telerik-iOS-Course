//
//  HttpRequesterDelegate.swift
//  DependencyInjectionDemos
//
//  Created by Denislav Todorov on 17.11.22.
//

import Foundation

protocol HttpRequesterDelegate {
    func didCompleteGet(result: Any)
    func didCompletePost(result: Any)
}

extension HttpRequesterDelegate {
    func didCompleteGet(result: Any) {
        
    }
    
    func didCompletePost(result: Any) {
        
    }
}
