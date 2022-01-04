//
//  GFEmptyStateView.swift
//  GHFollowers
//
//  Created by Эдип on 03.01.2022.
//

import UIKit

class GFEmptyStateView: UIView {
    
    let messageLabel = GFTitleLabel(textAlighment: .center, fontSize: 28)
    let logogImageView = UIImageView()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    convenience init(message: String) {
        self.init(frame: .zero)
        messageLabel.text = message
    }
    
    
    private func configure() {
        addSubviews(messageLabel, logogImageView)
        configureMessageLabel()
        configureLogogImageView()
    }
    
    
    private func configureMessageLabel() {
        messageLabel.numberOfLines = 3
        messageLabel.textColor = .secondaryLabel
        
        let labelCenterYConstant: CGFloat = DeviceTypes.isiPhoneSE || DeviceTypes.isiPhone8PlusZoomed ? -50 : -150
        
        NSLayoutConstraint.activate([
            messageLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: labelCenterYConstant),
            messageLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            messageLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            messageLabel.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    
    private func configureLogogImageView() {
        logogImageView.image = Images.emptyLogo
        logogImageView.translatesAutoresizingMaskIntoConstraints = false
        
        let logoBottomConstant: CGFloat = DeviceTypes.isiPhoneSE || DeviceTypes.isiPhone8PlusZoomed ? 80 : 40
        
        NSLayoutConstraint.activate([
            logogImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: logoBottomConstant),
            logogImageView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1.3),
            logogImageView.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 1.3),
            logogImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 170),
        ])
    }
}
