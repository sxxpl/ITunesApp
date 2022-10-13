//
//  AppDetailDescriptionView.swift
//  iOSArchitecturesDemo
//
//  Created by Артем Тихонов on 13.10.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import UIKit

final class AppDetailDescriptionView: UIView {
    
    // MARK: - Subviews
    private(set) lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 30)
        return label
    }()
    private(set) lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 15.0)
        label.numberOfLines = 0
        return label
    }()
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupLayout()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setupLayout()
    }
    // MARK: - UI
    private func setupLayout() {
        self.addSubview(self.titleLabel)
        self.addSubview(self.descriptionLabel)
        NSLayoutConstraint.activate([
            self.titleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 12.0),
            self.titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16.0),
            self.titleLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16.0),
            self.descriptionLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 12.0),
            self.descriptionLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16.0),
            self.descriptionLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16.0),
            self.descriptionLabel.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -12.0),

        ])
    }
}
