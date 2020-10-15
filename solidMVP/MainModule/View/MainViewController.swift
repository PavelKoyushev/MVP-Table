//
//  ViewController.swift
//  solidMVP
//
//  Created by Pavel Koyushev on 13.10.2020.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    
    var presenter: MainViewPresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter.showCountry()
    }
    
    @IBAction func didTapButtonAction(_ sender: Any) {
        self.presenter.showGreeting()
    }
}

extension MainViewController: MainViewProtocol {
    func setGreeting(greeting: String) {
        self.greetingLabel.text = greeting
    }
    func setCountry(country: String){
        self.countryLabel.text = country
    }
}

