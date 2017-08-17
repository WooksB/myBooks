//
//  WebViewController.swift
//  myBook
//
//  Created by ktds 11 on 2017. 8. 17..
//  Copyright © 2017년 CJON, INC. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    var shopURL:String?
    
    @IBOutlet weak var shopWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let bookURL = self.shopURL else {
            return
        }
        if let urlIns = URL(string: bookURL) {
            let urlRequest = URLRequest(url: urlIns)
            self.shopWebView.loadRequest(urlRequest)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
