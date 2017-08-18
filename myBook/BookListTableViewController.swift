//
//  BookListTableViewController.swift
//  myBook
//
//  Created by ktds 11 on 2017. 8. 17..
//  Copyright © 2017년 CJON, INC. All rights reserved.
//

import UIKit

class BookListTableViewController: UITableViewController, AddBookDelegate {

    var books:[Book] = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let book1 = Book(title: "그림으로 배우는 클라우드 클라우드 서비스의 종류 및 개요부터 기술, 도입, 실제 사례까지" , writer: "하야시 미사유키", publisher: "영진닷컴", coverImage: UIImage(named: "cloud")!, price: 14400,
                         description: "클라우드 컴퓨팅은 현재 비즈니스와 일상생활에서 빼놓을 수 없는 존재가 되었다. 애플리케이션 개발, 웹 서비스 등을 넘어서 최근에는 기업용 정보 시스템과 IoT(Internet of Things) 플랫폼 등으로 이용 범위가 확대되고 있다. 이 책 『그림으로 배우는 클라우드』는 기술적인 지식이 없어도 누구나 가볍게 볼 수 있도록 삽화와 도표를 통해 클라우드의 기술과 서비스, 활용 사례 등을 알기 쉽게 설명한다. 클라우드의 기초 지식부터 대표적인 서비스 유형과 클라우드를 지원하는 다양한 기술, 도입 시 고려 사항과 아마존, 구글 등 클라우드 서비스의 특징, 업종 및 용도별 도입 사례까지 클라우드에 대해 알아야 할 지식들이 모두 담겨 있다. IT에 관련된 직무 종사자, 사내 정보 시스템 담당자 및 클라우드 서비스 및 기술 활용 사례를 폭넓고 균형있게 배우고 싶은 모든 분들을 대상으로 하고 있으며, 한 권으로 실무에 활용할 수 있는 클라우드 컴퓨팅의 모든 기본 지식을 효율적으로 익힐 수 있을 것이다.", url: "http://www.kyobobook.co.kr/product/detailViewKor.laf?ejkGb=KOR&mallGb=KOR&barcode=9788931455663&orderClick=LET&Kc=")
        
        let book2 = Book(title: "사랑보다도 더 사랑한다는 말이 있다면 이 문장이 당신에게 닿기를 | tvN 하백의 신부 드라마 책" , writer: "최갑수", publisher: "예담출판사", coverImage: UIImage(named: "tvn_drama")!, price: 12600,
                         description: "세상 모든 사랑을 닮은 시인 최갑수의 에세이.책을 읽다가, 영화를 보다가, 음악을 듣다가 문득 찾아오는 얼굴이나 기억은 누구에게나 한 번쯤은 있을 것이다. 우리는 사랑을 정의할 수는 없지만 사랑이 떠오르는 순간만큼은 알 수 있다. ‘나’의 마음을 대신 표현한 듯한 문장과 대사, 노래 가사에 심장이 저릿해지는 공감의 느낌은 마음에 오래 남는다. 그리고 여기, 한 작가가 골라낸 사랑의 문장들 또한 눈과 마음에 아주 오래 머문다. 『사랑보다도 더 사랑한다는 말이 있다면』은 사랑에 관한 보편적인 주제로 뜨거운 호응을 얻었던 최갑수 작가의 연재 ‘사랑하는 문장들’을 엮은 책이다. 시인이자 여행작가, 사진가인 최갑수 작가가 골라낸 사랑에 관한 문장들과 한층 농밀해진 사진, 그리고 그 사이를 흐르는 에세이가 어우러져 절묘한 분위기를 이끌어낸다. 사랑을 부러 긍정하지 않는 그윽한 흑백사진과 중간 중간 감정이 고조되는 컬러사진, 여운 있는 마무리로 현재의 사랑뿐만 아니라 모든 사랑을 교차하게 하여 읽는 이 책은 마음을 정확하게 표현하고 전달하는 느낌을 받기에 사랑하는 이에게, 그리고 나에게 반드시 선물해주어도 좋을 책이다.", url: "http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9788959134809")
        
        let book3 = Book(title: "말의 품격 말과 사람과 품격에 대한 생각들" , writer: "이기주", publisher: "황소북스", coverImage: UIImage(named: "say")!, price: 13050,
                         description: "말과 사람과 품격에 대한 이야기『말의 품격』은 《언어의 온도》로 많은 독자의 공감을 얻은 이기주 작가의 에세이집이다. 경청, 공감, 반응, 뒷말, 인향, 소음 등의 24개의 키워드를 통해 말과 사람과 품격에 대한 생각들을 풀어낸다. 저자의 인문학적 소양을 바탕과 감성이 더해져 볼거리와 생각거리를 동시에 전한다. 한 장 한 장 넘길 때마다 자신의 말과 세계관에 대해 끝없는 질문을 던지게 될 것이다.말은 마음을 담아낸다. 말은 마음의 소리이다. 때문에 무심코 던지 한마디에 사람의 품성이 드러난다. 품성이 말하고 품성이 듣는 것이다. 격과 수준을 의미하는 한자‘품(品)’은 입‘구(口)’가 세 개 모여 이루어져있음을 알 수 있다. 말이 쌓이고 쌓여 한 사람의 품격이 된다는 뜻이다. 말을 죽일지 살릴지 신중히 결정해야 한다. 말은 한 사람의 입에서 나오지만 천 사람의 귀로 들어가고 끝내 만 사람의 입으로 옮겨지기 때문이다. ", url: "http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9788997092772&orderClick=43d")
        
        let book4 = Book(title: "iPhone SDK 튜터리얼2", writer: nil, publisher: nil, coverImage: nil, price: nil, description: nil, url: nil)
        
  
        
        books.append(book1)
        books.append(book2)
        books.append(book3)
        books.append(book4)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return books.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        if let bookCell = cell as? BookTableViewCell {
            let book = self.books[indexPath.row]
            
            let numFormatter:NumberFormatter = NumberFormatter()
            numFormatter.numberStyle = NumberFormatter.Style.decimal
            
            if let price = book.price {
                let priceStr = numFormatter.string(from: NSNumber(integerLiteral: book.price!))
                    bookCell.bookPriceLabel.text = priceStr
            } else {
                bookCell.bookPriceLabel.text = ""
            }
            bookCell.bookTitleLabel.text = book.title
            bookCell.bookWriterLabel.text = book.writer

            bookCell.bookImageView.image = book.coverImage
            return bookCell
        }
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "addvc" {
            if let addVC = segue.destination as? AddBookViewController {
                addVC.delegate = self
            }
            
        } else if segue.identifier == "detailvc" {
            let cell = sender as? UITableViewCell
            
            let vc = segue.destination as? BookDetailViewController
            guard let seletedCell = cell, let detailVC = vc else {
                return
            }
            
            if let idx = self.tableView.indexPath(for: seletedCell) {
                detailVC.book = self.books[idx.row]
            }
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    func sendNewBook(book: Book) {
        self.books.append(book)
        self.tableView.reloadData()
    }
}

class BookTableViewCell: UITableViewCell {
    
    @IBOutlet weak var bookImageView: UIImageView!
    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var bookWriterLabel: UILabel!
    @IBOutlet weak var bookPriceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
