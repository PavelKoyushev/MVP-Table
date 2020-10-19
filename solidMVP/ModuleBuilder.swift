//
//  ModuleBuilder.swift
//  solidMVP
//
//  Created by Pavel Koyushev on 13.10.2020.
//

import UIKit

protocol Builder {
    static func createMainModule() -> UIViewController
}

class ModelBuilder: Builder {
    static func createMainModule() -> UIViewController {
        
        let view = MainViewController()
        let networkService = NetworkService()
        let presenter = MainPresenter(view: view, networkService: networkService)
        
        view.presenter = presenter
        
        return view
    }
}
