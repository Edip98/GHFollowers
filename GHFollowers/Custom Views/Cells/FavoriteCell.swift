//
//  FavoriteCell.swift
//  GHFollowers
//
//  Created by Эдип on 04.01.2022.
//

import UIKit

class FavoriteCell: UITableViewCell {

    static let reuseID = "FavoriteCell"
    let avatarImageView = GFAvatarImageView(frame: .zero)
    let userNamelabel = GFTitleLabel(textAlighment: .left, fontSize: 26)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        onfigure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func set(favorite: Follower) {
        userNamelabel.text = favorite.login
        avatarImageView.downlodAvatarImage(fromURL: favorite.avatarUrl)
    }
    
    
    private func onfigure() {
        addSubviews(avatarImageView, userNamelabel)
        
        accessoryType = .disclosureIndicator
        let padding: CGFloat = 12
        
        NSLayoutConstraint.activate([
            avatarImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            avatarImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            avatarImageView.heightAnchor.constraint(equalToConstant: 60),
            avatarImageView.widthAnchor.constraint(equalToConstant: 60),
            
            userNamelabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            userNamelabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 24),
            userNamelabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            userNamelabel.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
