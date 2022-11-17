//
//  HttpRequesterBase.swift
//  DependencyInjectionDemos
//
//  Created by Denislav Todorov on 17.11.22.
//

import Foundation

protocol HttpRequesterBase {
    var delegate: HttpRequesterDelegate {get set}
    
    func get(fromUrl urlString: String,
             andHeaders headers: Dictionary<String, String>)
    
    func post(toUrl urlString: String,
              withBody body: Any,
              andHeaders headers: Dictionary<String, String>)
    
    func postJson(toUrl urlString: String,
              withBody body: Any,
                  andHeaders headers: Dictionary<String, String>)
}
