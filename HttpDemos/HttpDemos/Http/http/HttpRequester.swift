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
        
        let dataTask = URLSession.shared.dataTask(with: request, completionHandler:
            { bodyData, response, error in
            do {
                let body = try JSONSerialization.jsonObject(with: bodyData!, options: .allowFragments)
                self.delegate?.didReceiveData(data: body)
            }
            catch {
                self.delegate?.didReceiveError(error: error)
            }
        })
        
        dataTask.resume()
    }
}


