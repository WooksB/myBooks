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
    

    @IBOutlet weak var bookCoverImageView: UIImageView!

    @IBOutlet weak var bookWrterLabel: UILabel!
    @IBOutlet weak var bookPublisherLabel: UILabel!
    
    @IBOutlet weak var bookPriceLabel: UILabel!
    
    @IBOutlet weak var bookTitle: UINavigationItem!
    @IBOutlet weak var bookDescriptionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let newBook = self.book else {
            return
        }
        
        self.bookCoverImageView.image = newBook.coverImage
        self.bookPublisherLabel.text = newBook.publisher
        self.bookWrterLabel.text = newBook.writer
        
        if let bookPrice:Int = newBook.price {
            self.bookPriceLabel.text = String(bookPrice)
        }
        
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
