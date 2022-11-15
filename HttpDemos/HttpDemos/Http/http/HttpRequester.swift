//
//  HttpRequester.swift
//  HttpDemos
//
//  Created by Denislav Todorov on 15.11.22.
//

import UIKit

class HttpRequester {
    
    var delegate: HttpRequesterDelegate?
    
    func get(fromUrl urlString: String){
        let url = URL(string: urlString)
        
        var request = URLRequest(url: url!)
        
        weak var weakSelf = self
        
        let dataTask = URLSession.shared.dataTask(with: request, completionHandler:
            { bodyData, response, error in
            do {
                let body = try JSONSerialization.jsonObject(with: bodyData!, options: .allowFragments)
                weakSelf?.delegate?.didReceiveData(data: body)
            }
            catch {
                weakSelf?.delegate?.didReceiveError(error: error)
            }
        })
        
        dataTask.resume()
    }
}


