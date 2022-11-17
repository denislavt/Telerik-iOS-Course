//
//  HttpRequester.swift
//  DependencyInjectionDemos
//
//  Created by Denislav Todorov on 17.11.22.
//

import Foundation

enum HttpMethod: String {
    case get = "GET"
    case post = "POST"
}


class HttpRequester {
    
    var delegate: HttpRequesterDelegate?
    
    func send(withMethod method: HttpMethod,
              toUrl urlString: String,
              withBody body: Any,
              andHeaders headers: Dictionary<String, String> = [:]){
        let url = URL(string: urlString)
        
        var request = URLRequest(url: url!)
        request.httpMethod = method.rawValue
        
        if(body != nil) {
            do {
                request.httpBody = try JSONSerialization.data(withJSONObject: body,
                                                              options: .prettyPrinted)
            } catch {
                // TODO error
            }
            
            headers.forEach() {request.setValue($0.value, forHTTPHeaderField: $0.key)}
            
            
            weak var weakSelf = self //prevent memory leaks
            
            let dataTask = URLSession.shared.dataTask(with: request) {data, response, error in
                if(error != nil){
                    //TODO error
                }
                
                do{
                    let obj = try JSONSerialization.jsonObject(with: data!, options: .allowFragments)
                    switch(method) {
                    case .get:
                        weakSelf?.delegate?.didCompleteGet(result: obj)
                    case .post:
                        weakSelf?.delegate?.didCompletePost(result: obj)
                    }
                } catch {
                    //TODO error
                }
                
            }
                dataTask.resume()
            
        }
    }
    
    func get(fromUrl urlString: String,
             andHeaders headers: Dictionary<String, String>){
        self.send(withMethod: .get,
                  toUrl: urlString,
                  withBody: (Any).self, // ?
                  andHeaders: headers)
    }
    
    func post(toUrl urlString: String,
              withBody body: Any,
              andHeaders headers: Dictionary<String, String>){
        self.send(withMethod: .post, toUrl: urlString, withBody: body, andHeaders: headers)
    }
    
    func postJson(toUrl urlString: String,
              withBody body: Any,
              andHeaders headers: Dictionary<String, String>){
        
        var headersWithJson: Dictionary<String, String> = [:]
        headers.forEach() {headersWithJson[$0.key] = $0.value}
        headersWithJson["Content-Type"] = "application/json"
        
        self.send(withMethod: .post, toUrl: urlString, withBody: body, andHeaders: headersWithJson)
    }
}
