//
//  ContactsViewController.swift
//  Messenger_iOS
//
//  Created by  Aleksandr Afrikanov on 15.04.2021.
//

import UIKit

class ContactsViewController: UIViewController {
    
    public let tabBarImageName = "person.crop.circle"
    
    init() {
        super.init(nibName: nil, bundle: nil)
        self.title = "Contacts"
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

}
