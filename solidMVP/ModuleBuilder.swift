//
//  ModuleBuilder.swift
//  solidMVP
//
//  Created by Pavel Koyushev on 13.10.2020.
//

import UIKit

protocol Builder {
    static func createMainModule() -> UIViewController
    static func createDetailModule(comment: Comment?) -> UIViewController
}

class ModelBuilder: Builder {
    
    static func createMainModule() -> UIViewController {
        
        let view = MainViewController()
        let networkService = NetworkService()
        let presenter = MainPresenter(view: view, networkService: networkService)
        
        view.presenter = presenter
        
        return view
    }
    
    static func createDetailModule(comment: Comment?) -> UIViewController {
        let view = DetailViewController()
        let networkService = NetworkService()
        let presenter = DetailPresenter(view: view, networkService: networkService, comment: comment)
        
        view.presenter = presenter
        
        return view
    }
}
