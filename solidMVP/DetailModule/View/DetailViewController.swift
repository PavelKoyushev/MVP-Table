//
//  DetailViewController.swift
//  MVP-Table
//
//  Created by Pavel Koyushev on 28.10.2020.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var commentLabel: UILabel!
    var presenter: DetailViewPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.setComment()

    }
}

extension DetailViewController: DetailViewProtocol{
    func setComment(comment: Comment?) {
        commentLabel.text = comment?.body
    }
    
    
}
