//
//  OperationsViewController.swift
//  PhotosCollection
//
//  Created by Kirill Klebanov on 26.07.2022.
//

import Foundation
import UIKit

class OperationsViewController: UIViewController {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Operations"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(titleLabel)
        let constraints = [
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16)
        ]
        NSLayoutConstraint.activate(constraints)
    }
}
