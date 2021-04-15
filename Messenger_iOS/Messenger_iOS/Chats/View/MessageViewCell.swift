//
//  MessageViewCell.swift
//  Messenger_iOS
//
//  Created by  Aleksandr Afrikanov on 15.04.2021.
//

import UIKit

class MessageViewCell: UITableViewCell {
    
    var avatar: UIImageView = {
        var image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    var name: UILabel = {
        var name = UILabel()
        name.translatesAutoresizingMaskIntoConstraints = false

        var attributes = [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18)]
        var boldString = NSMutableAttributedString(string: name.text!, attributes: attributes)
        name.attributedText = boldString
        return name
    }()
    
    var message: UITextView = {
        var text = UITextView()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textContainer.lineBreakMode = .byTruncatingTail
        text.textContainer.maximumNumberOfLines = 2
        text.isScrollEnabled = false
        text.isEditable = false
        text.font = .systemFont(ofSize: 16)
        text.textAlignment = .left
        text.textContainerInset = UIEdgeInsets.zero
        text.textContainer.lineFragmentPadding = 0
        return text
        
    }()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(self.avatar)
        self.contentView.addSubview(self.name)
        self.contentView.addSubview(self.message)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.avatar.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 5).isActive = true
        self.avatar.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor).isActive = true
        self.avatar.heightAnchor.constraint(equalToConstant: 60).isActive = true
        self.avatar.widthAnchor.constraint(equalToConstant: 60).isActive = true
        self.avatar.layer.cornerRadius = self.avatar.frame.size.height / 2
        
        self.name.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 15).isActive = true
        self.name.leadingAnchor.constraint(equalTo: self.avatar.trailingAnchor, constant: 15).isActive = true
        self.name.heightAnchor.constraint(equalToConstant: 20).isActive = true

        self.message.topAnchor.constraint(equalTo: self.name.bottomAnchor, constant: 10).isActive = true
        self.message.leadingAnchor.constraint(equalTo: self.avatar.trailingAnchor, constant: 15).isActive = true
        self.message.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -10).isActive = true
    }
    
}
