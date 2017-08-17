//
//  BookDetailViewController.swift
//  myBook
//
//  Created by ktds 11 on 2017. 8. 17..
//  Copyright © 2017년 CJON, INC. All rights reserved.
//

import UIKit

class BookDetailViewController: UIViewController {

    var book:Book?
    
    @IBOutlet weak var bookTitle: UINavigationItem!
    @IBOutlet weak var bookImage: UIImageView!
    
    @IBOutlet weak var bookWriterLabel: UILabel!
    
    @IBOutlet weak var bookPublisherLabel: UILabel!
    
    @IBOutlet weak var bookPrice: UILabel!
    
    @IBOutlet weak var bookDescriptionTextView: UITextView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let newBook = self.book else {
            return
        }
        
        self.bookImage.image = newBook.coverImage
        self.bookPublisherLabel.text = newBook.publisher
        self.bookWriterLabel.text = newBook.writer
        self.bookPrice.text = String(newBook.price)
        self.bookDescriptionTextView.text = newBook.description
        self.bookTitle.title = newBook.title
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if let vc = segue.destination as? WebViewController {
            vc.shopURL = self.book?.url
        }
    }
 

}
