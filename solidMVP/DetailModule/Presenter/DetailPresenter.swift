//
//  DetailPresenter.swift
//  MVP-Table
//
//  Created by Pavel Koyushev on 28.10.2020.
//

import Foundation

protocol DetailViewProtocol{
    func setComment(comment: Comment?)
}

protocol DetailViewPresenterProtocol: class {
    init(view: DetailViewProtocol, networkService: NetworkService, comment: Comment?)
    func setComment()
}

class DetailPresenter: DetailViewPresenterProtocol {
    
    var view: DetailViewProtocol?
    let networkService: NetworkServiceProtocol!
    var comment: Comment?
    
    required init(view: DetailViewProtocol, networkService: NetworkService, comment: Comment?) {
        self.view = view
        self.networkService = networkService
        self.comment = comment
    }
    
    public func setComment() {
        self.view?.setComment(comment: comment)
    }
    
    
}
