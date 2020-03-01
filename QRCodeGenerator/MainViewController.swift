//
//  MainViewController.swift
//  QRCodeGenerator
//
//  Created by Erick Borges on 29/02/20.
//  Copyright © 2020 Erick Borges. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - Views
    private lazy var mainLabel: UILabel = {
        var label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 36, weight: .bold)
        label.text = "QR Code Generator"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var copyRightLabel: UILabel = {
        var label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 14)
        label.text = "Copyright (c) 2020 Erick Borges. All rights reserved."
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewHierarchy()
        setupConstraints()
        view.backgroundColor = .white
    }
}

extension MainViewController {
    private func setupViewHierarchy() {
        [mainLabel, copyRightLabel].forEach(view.addSubview)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -view.frame.height/8),
            mainLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            mainLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
        
        NSLayoutConstraint.activate([
            copyRightLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            copyRightLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            copyRightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            copyRightLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16)
        ])
    }
}
