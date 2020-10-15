//
//  MainPresenter.swift
//  solidMVP
//
//  Created by Pavel Koyushev on 13.10.2020.
//

import Foundation

protocol MainViewProtocol: class {
    func setGreeting(greeting: String)
    func setCountry(country: String)
}

protocol MainViewPresenterProtocol: class {
    init (view: MainViewProtocol, person: Person)
    func showGreeting()
    func showCountry()
}

class MainPresenter: MainViewPresenterProtocol {
    var view: MainViewProtocol
    var person: Person
    
    required init(view: MainViewProtocol, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = self.person.firstName + " " + self.person.lastName
        self.view.setGreeting(greeting: greeting)
    }
    
    func showCountry() {
        let country = self.person.country
        self.view.setCountry(country: country)
    }
}
