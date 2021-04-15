//
//  ViewController.swift
//  Messenger_iOS
//
//  Created by  Aleksandr Afrikanov on 15.04.2021.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.configureTabBar()
    }
    
    private func configureTabBar() {
        let contactsViewController = UINavigationController(rootViewController: ContactsViewController())
        let chatsViewController = UINavigationController(rootViewController: ChatsViewController())
        let settingsViewController = UINavigationController(rootViewController: SettingsViewController())
        
        self.setViewControllers([contactsViewController, chatsViewController, settingsViewController], animated: true)
        
        guard let items = self.tabBar.items else {
            return
        }
        let images = [ContactsViewController().tabBarImageName, ChatsViewController().tabBarImageName, SettingsViewController().tabBarImageName]
        
        for i in stride(from: 0, to: items.count, by: 1) {
            items[i].image = UIImage(systemName: images[i])
        }
        
        items[1].badgeValue = "1"
    }
    
}

