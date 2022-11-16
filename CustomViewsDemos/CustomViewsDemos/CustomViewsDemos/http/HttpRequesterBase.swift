//
//  HttpRequesterBase.swift
//  CustomViewsDemos
//
//  Created by Denislav Todorov on 16.11.22.
//

import Foundation

protocol HttpRequesterBase{
    var delegate: HttpRequesterDelegate? {get set}
    
    func get(fromUrl urlString: String, withHeaders headers: Dictionary<String, String>?)
    
    func post(toUrl urlString: String, withBody body: Any, withHeaders headers: Dictionary<String, String>?)
    
    func postJson(toUrl urlString: String, withBody body: Any, withHeaders headers: Dictionary<String, String>?)
}
