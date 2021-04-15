//
//  ChatsViewController.swift
//  Messenger_iOS
//
//  Created by  Aleksandr Afrikanov on 15.04.2021.
//

import UIKit

class ChatsViewController: UITableViewController {
    
    public var tabBarImageName = "message"
    public var messages = [MessageModel]()
    
    init() {
        super.init(nibName: nil, bundle: nil)
        self.title = "Chats"
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        messages.append(MessageModel(avatar: UIImage(systemName: "gear")!, name: "Alexey Smirnov", message: "fjdbjhgjnf", date: Date(), isRead: true))
        messages.append(MessageModel(avatar: UIImage(systemName: "gear")!, name: "Alexey Smirnov", message: "fjdbjhgjnf", date: Date(), isRead: true))
        messages.append(MessageModel(avatar: UIImage(systemName: "gear")!, name: "Alexey Smirnov", message: "fjdbjhgjnf", date: Date(), isRead: true))
        self.tableView.register(MessageViewCell.self, forCellReuseIdentifier: "MessageCell")
        self.tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.messages.count
    }
    
    // Provide a cell object for each row.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MessageCell", for: indexPath) as! MessageViewCell
        cell.avatar.image = messages[indexPath.row].avatar
        cell.name.text = messages[indexPath.row].name
        cell.message.text = messages[indexPath.row].message
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

}
