//
//  UIViewController+Ext.swift
//  GHFollowers
//
//  Created by Эдип on 02.01.2022.
//

import UIKit
import SafariServices

extension UIViewController {
    
    func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
    
    
    func presentSafariVC(with url: URL) {
        let safatiVC = SFSafariViewController(url: url)
        safatiVC.preferredControlTintColor = .systemGreen
        present(safatiVC, animated: true)
    }
}
