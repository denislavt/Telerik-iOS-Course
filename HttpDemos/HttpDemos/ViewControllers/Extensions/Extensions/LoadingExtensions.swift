//
//  LoadingExtensions.swift
//  HttpDemos
//
//  Created by Denislav Todorov on 16.11.22.
//

import UIKit

let loadingScreen = UIActivityIndicatorView()

extension UIViewController{
    func showLoadingScreen() {
        loadingScreen.frame = self.view.frame //zaema celiq ekran
        loadingScreen.style = UIActivityIndicatorView.Style.large
        loadingScreen.backgroundColor = .gray
        self.view.addSubview(loadingScreen)
        loadingScreen.startAnimating()
    }
    
    func hideLoadingScreen() {
        loadingScreen.stopAnimating()
        loadingScreen.removeFromSuperview()
    }
}
