//
//  ImageWithLoading.swift
//  CustomViewsDemos
//
//  Created by Denislav Todorov on 16.11.22.
//

import UIKit

class ImageWithLoading: UIView, HttpRequesterDelegate{
    
    
    
    private cache: Dictionary<String, Data>?
    
    private var loadingView: UIView?
    private var imageView: UIImageView?
    private var http: HttpRequester?
    
    var imageUrl: String? {
        willSet (imageUrl){
            self.initialize()
            if(self.cache[imageUrl] != nil){
                
            }
            DispatchQueue.main.async {
                self.loadingView?.isHidden = false
                self.imageView?.isHidden = true
                
            }
            self.http?.get(fromUrl: imageUrl!, withHeaders: nil)
        }
    }
           
    override init(frame: CGRect){
        super.init(frame: frame)
        self.initialize()//
        }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)          //syzdava se kogato view-to se vyzobnovqva
        self.initialize()
    }
    
    func initialize(){
        self.http = HttpRequester()
        self.http?.delegate = self
        
        self.loadingView = UIActivityIndicatorView(frame: self.frame)
        self.loadingView?.isHidden = false
        
        
        self.imageView = UIImageView(frame: self.frame)
        self.imageView?.isHidden = true
        
        self.addSubview(self.loadingView!)
        self.addSubview(self.imageView!)
    }
    
    func didCompleteGet(result: Data) {
        
        DispatchQueue.main.async {
            self.imageView?.image = UIImage(data: result)
            self.loadingView?.isHidden = true
            self.imageView?.isHidden = false
        }
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
