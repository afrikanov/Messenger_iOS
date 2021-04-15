//
//  SettingsViewController.swift
//  Messenger_iOS
//
//  Created by  Aleksandr Afrikanov on 15.04.2021.
//

import UIKit

class SettingsViewController: UIViewController {
    
    public let tabBarImageName = "gear"
    
    init() {
        super.init(nibName: nil, bundle: nil)
        self.title = "Settings"
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
