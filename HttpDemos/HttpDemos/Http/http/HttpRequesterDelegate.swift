//
//  HttpRequesterDelegate.swift
//  HttpDemos
//
//  Created by Denislav Todorov on 15.11.22.
//

import UIKit

protocol HttpRequesterDelegate {
    func didReceiveData(data: Any)
    func didReceiveError(error: Error)

}
