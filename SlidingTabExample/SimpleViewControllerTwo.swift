//
//  SimpleViewControllerTwo.swift
//  SlidingTabExample
//
//  Created by Suprianto Djamalu on 05/08/19.
//  Copyright © 2019 Suprianto Djamalu. All rights reserved.
//

import Foundation
import UIKit

class SimpleViewControllerTwo: UISimpleSlidingTabController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI(){
        // view
        view.backgroundColor = .white
        
        // navigation
        navigationItem.title = "Sliding Tab Example"
        navigationController?.navigationBar.barTintColor = .orange
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.barStyle = .black
        
        // slidingTab
        addItem(item: SimpleItemViewControllerOne(), title: "First") // add first item
        addItem(item: SimpleItemViewControllerTwo(), title: "Second") // add second item
        addItem(item: SimpleItemViewControllerThree(), title: "Third") // add third item
        setHeaderActiveColor(color: .white) // default blue
        setHeaderInActiveColor(color: .lightText) // default gray
        setHeaderBackgroundColor(color: .orange) // default white
        setCurrentPosition(position: 1) // default 0
        setStyle(style: .fixed) // default fixed
        build() // build
    }
    
}
