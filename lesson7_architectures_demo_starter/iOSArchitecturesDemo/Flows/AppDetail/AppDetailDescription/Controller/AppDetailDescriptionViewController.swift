//
//  AppDetailDescriptionViewController.swift
//  iOSArchitecturesDemo
//
//  Created by Артем Тихонов on 13.10.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import UIKit

final class AppDetailDescriptionViewController: UIViewController { // MARK: - Properties
    private let app: ITunesApp
    private var appDetailDescriptionView: AppDetailDescriptionView {
        return self.view as! AppDetailDescriptionView
    }
    // MARK: - Init
    init(app: ITunesApp) {
        self.app = app
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: - Lifecycle
    override func loadView() {
        super.loadView()
        self.view = AppDetailDescriptionView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fillData()
    }
    
    // MARK: - Private
    private func fillData() {
        self.appDetailDescriptionView.titleLabel.text = "Что нового?"
        self.appDetailDescriptionView.descriptionLabel.text = app.appDescription
    }
    
}
