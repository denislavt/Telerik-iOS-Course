//
//  AddBookModalViewController.swift
//  HttpDemos
//
//  Created by Denislav Todorov on 16.11.22.
//

import UIKit

protocol AddBookModalDelegate {
    func didCreateBook(book: Book?)
}


class AddBookModalViewController: UIViewController, HttpRequesterDelegate {
    
    @IBOutlet weak var textTitle: UITextField!
    @IBOutlet weak var textDescription: UITextView!
    
    var delegate: AddBookModalDelegate?
    
    var url: String {
        get{
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            return "\(appDelegate.baseUrl)/books"
        }
    }
    
    var http: HttpRequester? {
        get{
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            return appDelegate.http
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func save() {
        let title = self.textTitle.text
        let discription = self.textDescription.text
        
        let book = Book(withTitle: title!, andDescription: description)
        let bookDict = book.toDict()
        
        self.http?.postJson(toUrl: self.url, withBody: bookDict)
        
        
    }
    
    @IBAction func cancel() {
        self.dismiss(animated: true)
    }
    
    func didReceiveData(data: Any) {
        self.dismiss(animated: true)
        self.delegate?.didCreateBook(book: nil)
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
