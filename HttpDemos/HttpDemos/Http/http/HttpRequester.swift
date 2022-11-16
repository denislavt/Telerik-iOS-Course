//
//  HttpRequester.swift
//  HttpDemos
//
//  Created by Denislav Todorov on 15.11.22.
//

import UIKit

class HttpRequester {
    
    var delegate: HttpRequesterDelegate?
    
    func send(withMethod method: String,
              toUrl urlString: String,
              withBody bodyDict: Dictionary<String, Any>? = nil,
              andHeaders headers: Dictionary<String, String> = [:]){
        let url = URL(string: urlString)
        
        var request = URLRequest(url: url!)
        request.httpMethod = method //better with enum !!
        
        if(bodyDict != nil) {
            do {
                let body = try JSONSerialization.data(withJSONObject: bodyDict!, options: .prettyPrinted)
                request.httpBody = body as Data?
            } catch {
                
            }
        }
        
        headers.forEach() {request.setValue($0.value, forHTTPHeaderField: $0.key)}
        
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
    func get(fromUrl urlString: String, adnHeaders headers: Dictionary<String, String> = [:]){
        self.send(withMethod: "GET", toUrl: urlString, withBody: nil, andHeaders: headers)
    }
    
    func post(toUrl urlString: String, withBody bodyDict: Dictionary<String, Any>, adnHeaders headers: Dictionary<String, String> = [:]){
        self.send(withMethod: "POST", toUrl: urlString, withBody: bodyDict, andHeaders: headers)
    }
    
    func postJson(toUrl urlString: String, withBody bodyDict: Dictionary<String, Any>, andHeaders headers: Dictionary<String, String> = [:]){
        var headersWithJson: Dictionary<String, String> = [:]
        headers.forEach(){headersWithJson[$0.key] = $0.value}
        headersWithJson["Content-Type"] = "application/json"
        self.post(toUrl: urlString, withBody: bodyDict, adnHeaders: headersWithJson)
    }
    
//    func post(toUrl urlString: String, with body: Any){
//        let url = URL(string: urlString)
//
//        var request = URLRequest(url: url!)
//
//        weak var weakSelf = self
//
//        let dataTask = URLSession.shared.dataTask(with: request, completionHandler:
//            { bodyData, response, error in
//            do {
//                let body = try JSONSerialization.jsonObject(with: bodyData!, options: .allowFragments)
//                weakSelf?.delegate?.didReceiveData(data: body)
//            }
//            catch {
//                weakSelf?.delegate?.didReceiveError(error: error)
//            }
//    }
}


