//
//  DiConfig.swift
//  DependencyInjectionDemos
//
//  Created by Denislav Todorov on 17.11.22.
//

import Foundation

import SwinjectStoryboard

extension SwinjectStoryboard {
    public static func setup() {
        let baseUrl = "http://localhost:3001/api"
        
        defaultContainer.register(HttpRequesterBase.self) {_ in HttpRequester() }
        
        defaultContainer.storyboardInitCompleted(ViewController.self) { resolver, vc in
            var httpRequester = resolver.resolve(HttpRequesterBase.self)
            httpRequester?.delegate = vc
            vc.httpRuquester = httpRequester
            vc.url = "\(baseUrl)/books"
        }
    }
}
