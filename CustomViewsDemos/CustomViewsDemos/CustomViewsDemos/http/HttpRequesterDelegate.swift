//
//  HttpRequesterDelegate.swift
//  HttpDemos
//
//  Created by Denislav Todorov on 15.11.22.
//

import UIKit

protocol HttpRequesterDelegate {
    func didCompleteGet(result: Data)
    func didCompletePost(result: Any)

}

extension HttpRequesterDelegate {
    func didCompleteGet(result: Any) {
        
    }
    
    func didCompletePost(result: Any) {
        
    }
    
    func didReceiveError(error: Error) {
        
    }
}
