//
//  ViewController.swift
//  SlidingTabExample
//
//  Created by Suprianto Djamalu on 03/08/19.
//  Copyright © 2019 Suprianto Djamalu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let slidingTabController = UISimpleSlidingTabController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        guard let statusBarView = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView else { return }
        statusBarView.backgroundColor = .orange
        
        view.backgroundColor = .white
        view.addSubview(slidingTabController.view)
        
        slidingTabController.view.translatesAutoresizingMaskIntoConstraints = false
        slidingTabController.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        slidingTabController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        slidingTabController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        slidingTabController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        // add item
        slidingTabController.addItem(item: SlidingViewControllerOne(), title: "First")
        slidingTabController.addItem(item: SlidingViewControllerTwo(), title: "Second")
        
        // colors
        slidingTabController.setHeaderActiveColor(color: .white) // default blue
        slidingTabController.setHeaderInActiveColor(color: .lightText) // default gray
        slidingTabController.setHeaderBackgroundColor(color: .orange) // default white
        
        // build
        slidingTabController.build()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }

}

