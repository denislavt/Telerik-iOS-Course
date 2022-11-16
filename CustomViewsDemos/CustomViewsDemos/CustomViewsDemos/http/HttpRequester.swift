//
//  HttpRequester.swift
//  HttpDemos
//
//  Created by Denislav Todorov on 15.11.22.
//

import Foundation

enum HttpMethod: String{
    case get = "GET"
    case post = "POST"
}

class HttpRequester: HttpRequesterBase {
    
    var delegate: HttpRequesterDelegate?
    
    func send(withMethod method: HttpMethod,
              toUrl urlString: String,
              withBody body: Any?,
              andHeaders headers: Dictionary<String, String> = [:]){
        let url = URL(string: urlString)
        
        var request = URLRequest(url: url!)
        request.httpMethod = method.rawValue //better with enum !!
        
        if(body != nil) {
            do {
                request.httpBody = try JSONSerialization.data(withJSONObject: body!, options: .prettyPrinted)
            } catch {
                
            }
        }
        
        headers.forEach() {request.setValue($0.value, forHTTPHeaderField: $0.key)}
        
        weak var weakSelf = self
        
        let dataTask = URLSession.shared.dataTask(with: request) {data, response, error in
            if(error != nil){
                //TODO THROW ERROR
            }
            do {
                
                let obj = try JSONSerialization.jsonObject(with: data!, options: .allowFragments)
                switch(method) {
                case .get:
                    weakSelf?.delegate?.didCompleteGet(result: data!)
                case .post:
                    weakSelf?.delegate?.didCompletePost(result: data!)
                }
            } catch {
                //TODO THROW ERROR
            }}

        dataTask.resume()
    }
        func get(fromUrl urlString: String, withHeaders headers: Dictionary<String, String>?){
        let newHeaders = headers ?? [:]
            self.send(withMethod: .get, toUrl: urlString, withBody: nil, andHeaders: newHeaders)
    }
    
            func post(toUrl urlString: String, withBody body: Any, withHeaders headers: Dictionary<String, String>?){
            let newHeaders = headers ?? [:]
            self.send(withMethod: .post, toUrl: urlString, withBody: body, andHeaders: newHeaders)
    }
    
//    func delete(aturl urlString: String, withHeaders headers: Dictionary<String, String> = [:]) {
//            self.send(withMethod: ., toUrl: urlString, andHeaders: newHeaders)
//    }
    
            func postJson(toUrl urlString: String, withBody body: Any, withHeaders headers: Dictionary<String, String>?){
            var headersWithJson = headers ?? [:]
            
        //headers.forEach(){headersWithJson[$0.key] = $0.value}
        headersWithJson["Content-Type"] = "application/json"
            self.send(withMethod: .post, toUrl: urlString, withBody: body, andHeaders: headersWithJson)
    
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
        }}

                                                                  
